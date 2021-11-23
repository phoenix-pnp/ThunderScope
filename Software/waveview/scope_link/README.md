# Scope Link

## Setup

* Install boost
* Install cmake

## Building
The current build configuration assumes you don't have hardware. If you do,
remove the following line from the CMakeLists.txt:
```
add_definitions(-DNOHARDWARE)
```

To setup the project build files run (Should only need to be run once):
```
cmake -B build
```

To build the project, run the following commands:
```
cmake -B build
cmake --build build --config release
```

## Running

Its easiest to run from the `scope_link` folder. The relative paths to the test
files are messed up otherwise.

Run with the command:
```
./build/scope
```
After, you will need to setup the controller, get some data and unpause the
system. The CLI will tell you the commands available and how to use them.

Alternatively, you can start the controller from cli with:
```
./build/scope -c
```

## Commands
There are a large number of commands available to the user. They are listed here
in no particular order

### getch
* Prints the number of channels (1, 2 or 4)

### setch
* Sets the number of channels (1, 2 or 4)

### gettrig
* Prints the currently triggered channel

### settrig
* Sets the currently triggered channel (1, 2, 3, or 4)

### getwin
* Prints the current window size in number of samples

### setwin
* Sets the window size in number of samples

### getlevel
* Print the current trigger level

### setlevel
* Sets the current trigger level

### getmax
* Prints the maximum value of the current window

### getmin
* Prints the minimum value of the current window

### controller
* Initializes the controller thread to start all other threads

### pause
* Pauses processing of data

### unpause
* Unpauses processing of data

### reprocess
* reprocesses the currently displayed window?

### flush
* Flushes the pipeline by emptying all queues of any data

### getedgetype
* Returns the current trigger edge type (Rising or falling)

### setrising
* Sets the trigger type to trigger on the rising edge

### setfalling
* Sets the trigger type to trigger on the falling edge

### getdata
* Reloads the last loaded data file into the queue?

### getper
* Prints the persistence level

### setper
* Sets the persistence level

### setmath1
* Sets the first channel in the math equation

### setmath2
* Sets the second channel in the math equation

### setmathsign
* Sets the sign of the math opperation (add, or sub)

### datafile
* Loads the specified test samples from the csv in the test folder

### data
* Loads the test1.csv from the test folder

### delete
* Deletes the controller thread and all other threads with it


## Test files
Some of the tests may show different output now that 4 channels are available.

TODO: Check these and update for 4 channels.

Takes a csv input (or defaults to test1.csv) and runs it through the pipeline.
It will treat the csv as a continuous stream of samples and generate triggers,
outputing a dump.csv file containing the triggered data.
```
./bin/scope -t test/test1.csv
```

### test1.csv
Tests that triggers can be found in multiple buffers. Does this by having a
trigger in the first buffer, then 0s filling the remainder of the buffer. Each
line in the csv is 256 samples, so lines 1 to 32 are in the first buffer (This
assumes a buffer is `256*32` samples or 8K bytes long). The next trigger is on
line 33.

#### Expected Output:
| Output                |
| --------------------- |
| 1,127,1,1,1,1,1,1,1,1 |
| 2,127,2,2,2,2,2,2,2,2 |
| 3,127,3,3,3,3,3,3,3,3 |
| 4,127,4,4,4,4,4,4,4,4 |

### test2.csv
Tests that the correct positing within a 64 bit space is computed. Does this by
having 2 triggers right next to eachother.

Pass condition is if the first one is captured, but the second is ignored.

Fail condition is if the second one is captured aswell. This can be seen if any
0s appear in the dump.

#### Expected Output:
| Output                  |
| ----------------------- |
| 1,127,1,127,1,1,1,1,1,1 |
| 2,127,2,2,2,2,2,2,2,2   |
| 3,127,3,3,3,3,3,3,3,3   |
| 4,127,4,4,4,4,4,4,4,4   |

### test3.csv
Tests a window can be filled if parts of it are in different buffers.

This is done by putting a trigger within window size of the the end of a buffer.

#### Expected Output:
| Output                |
| --------------------- |
| 1,127,1,1,1,1,1,1,1,1 |
| 2,127,2,2,2,2,2,2,2,2 |
| 3,127,3,3,3,3,3,3,3,3 |
| 4,127,4,4,4,4,4,4,4,4 |

### test4.csv
Shows what happens numbers outside of the bounds are passed into a buffer. This
isn't a expected use case. The hardware should give proper numbers but spoofing
values from a csv should be within expeced range of -128 to 127.

#### Expected Output
Shown here is both the csv input and output.

| CSV Input                | Output                    | Notes                 |
| ------------------------ | ------------------------- | --------------------- |
| 1,127,1,-129,1,1,1,1,1,1 | 1,127,1,127,1,1,1,1,1,1   | Truncates to 127      |
| 2,127,2,-128,2,2,2,2,2,2 | 2,127,2,-128,2,2,2,2,2,2  | Proper representation |
| 3,127,3,256,3,3,3,3,3,3  | 3,127,3,0,3,3,3,3,3,3     | Truncates to 0        |
| 4,127,4,255,4,4,4,4,4,4  | 4,127,4,-1,4,4,4,4,4,4    | Truncates to -1       |

### test5.csv
Tests triggers on the boundry between buffers. The trigger should be caught by
the first buffer and finish filling from the second.

This is done by filling the first buffer with all 0's, the last sample in the
first buffer with a 1 (This sample will show in the window as the first sample
rising edge), and the first sample from the second buffer with a value above
the trigger level (127). This generate a rising edge trigger right on the
buffer boundry.

#### Expected Output
| Output                  |
| ----------------------- |
| 1,127,1,127,1,1,1,1,1,1 |
| 2,127,2,2,2,2,2,2,2,2   |
| 3,127,3,3,3,3,3,3,3,3   |
| 4,127,4,4,4,4,4,4,4,4   |

## Triggering and Post Processing plan
The pipeline through the C++ side of things is broken up into several stages.
These stages are:

1. PCIe Link
2. Triggering
3. Processing
4. Post Processing

### PCIe Link
This link is where all of the interactions with hardware happen. The PCIe Link
does some DMA magic to transfer a data in batches of `BUFFER_SIZE`. This data
is pushed into a fifo lock free queue that passes the data into the next stage
of the pipeline (triggering) for processing.

### Triggering
The triggering core loop pops a buffer from its input queue and computes trigger
edges. When a new buffer is poped it first needs to copy the last 4 samples of
the previous buffer (1 for each channel) so that it can compute the edges
between buffers.


It computes the trigger with bitshifting. Each buffer is processed in 64 sample
segments (more work can be done to try larger segments, but `uint64_t` was
all I tried). Its computed by running a large bit shifting
opperation where each trigger position is computed, shifted, and then ORed with
the rest of the triggers in the segment. This was done to try and leverage SIMD.
While we never actually achieved SIMD (SIMD requires no loop breaks and the "<"
and ">" are likely whats stopping it), our tests showed it running at ~1.5
GiBps; so we moved on.

The result is a number of bits representing every edge between samples (0 if no
edge, 1 if edge). This lets us take the log base 2 to get the exact posion of
the first edge.

Once the triggers are computed, they are passed to a post-processing with the
buffer for those respective triggers. No work is done beyond checking for
triggers in this stage.

### Processing
The core loop will pop a buffer from its input queue, find the earliest trigger
for the buffer and begin copying and processing samples from that point into
the persistance buffer. This stage finds the first edge by taking the log base 2
of the edge bits of a buffer.

When a new trigger is found, it will take up a new row in the persistance array
and begin copying in samples. Because a waveform can extend beyond the boundry
of a single buffer, the position of the most recent data added to a row will
also need to be stored. When the next buffer arrives, the samples are coppied to
incomplete waveform windows and additional triggers are checked for.

A single data point will only appear in at most one window. If we say that there
must be up to 64 samples before the next window can start, we can ignore
checking the trigger `uint64_t` that the last sample in the window belongs to.

Once a window is filled it can be pushed off to the next stage. Currently this
is the post processing stage, but that is subject to change when moving to
glscopeclient.

### Post Processing
This is where extra math things get done. It many not be neccessesary with the
move to glscopeclient.

## Troubleshooting
### Error while loading shared libraries, cannot open shared object file
Boost libraries are not available to the linker. likely becaues they're in
`/usr/local/lib` (which is where we want them). Follow the article
[Error While Loading Shared Libraries, on The Lone Sysadmin](https://lonesysadmin.net/2013/02/22/error-while-loading-shared-libraries-cannot-open-shared-object-file/)
for how to fix it. Jump to part 5 if you don't want the whole explanation.

