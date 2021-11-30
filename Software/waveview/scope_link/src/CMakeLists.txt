set(CMAKE_CXX_STANDARD 17)

# Comment out this line if you will try_compile with CMake's boost.
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

# Avoid macro name-collision between Boost ERROR and WinGDI ERROR.
# https://stackoverflow.com/a/32952062
if(MSVC)
add_definitions(-DNOGDI)
endif()

add_definitions(-DNOHARDWARE)

add_executable(${PROJECT_NAME}
	bridge.cpp
	bridge.hpp
	common.cpp
	common.hpp
	controller.cpp
	controller.hpp
	EVMath.cpp
	EVMath.hpp
	EVTester.cpp
	EVTester.hpp
	exception.cpp
	exception.hpp
	logger.cpp
	logger.hpp
	main.cpp
	PCIe.cpp
	PCIe.hpp
	postProcessor.cpp
	postProcessor.hpp
	processor.cpp
	processor.hpp
	trigger.cpp
	trigger.hpp
	waveformServerThread.cpp
	waveformServerThread.hpp
	xdma_public.h
)


target_include_directories(${PROJECT_NAME} PUBLIC ${Boost_INCLUDE_DIRS} include)
target_link_libraries(${PROJECT_NAME}
	${LIBRARIES}
	${Boost_LIBRARIES}
	xptools
	log
	)
