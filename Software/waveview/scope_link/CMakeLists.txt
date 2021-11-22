cmake_minimum_required(VERSION 3.15)

project (scope)

set(CMAKE_CXX_STANDARD 17)

# Comment out this line if you will try_compile with CMake's boost, for C team's consideration.
set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

# Boost
if(MSVC)
set(Boost_USE_STATIC_LIBS ON)
else()
set(Boost_USE_STATIC_LIBS OFF) 
endif()

set(Boost_USE_MULTITHREADED ON) 
set(Boost_USE_STATIC_RUNTIME OFF)

if(MSVC)
set(BOOST_ROOT C:/Boost)
endif()
find_package( Boost REQUIRED COMPONENTS system thread log_setup log )

# QT
find_package(Qt5 COMPONENTS Widgets PrintSupport REQUIRED)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTOUIC ON)
set(CMAKE_AUTORCC ON)

# Declare the location of the source and header files
file(GLOB SOURCES CONFIGURE_DEPENDS "src/*.cpp")
# Need to add all header files into add_executable or moc wont parse them
file(GLOB HEADERS CONFIGURE_DEPENDS "include/*.h" "include/*.hpp")

# Avoid macro name-collision between Boost ERROR and WinGDI ERROR.
# https://stackoverflow.com/a/32952062
if(MSVC)
add_definitions(-DNOGDI)
endif()

add_definitions(-DNOHARDWARE)

add_executable(${PROJECT_NAME}
	${SOURCES}
	${HEADERS}
)

target_include_directories(${PROJECT_NAME} PUBLIC ${Boost_INCLUDE_DIRS} include)
target_link_libraries(${PROJECT_NAME} ${LIBRARIES} ${Boost_LIBRARIES} Qt5::Widgets Qt5::PrintSupport)
