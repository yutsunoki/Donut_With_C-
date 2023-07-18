cmake_minimum_required(VERSION 3.24.0-rc3)

project(Donut)

message(STATUS "${CMAKE_GENERATOR} ${CMAKE_VERBOSE_MAKEFILE}")

set(headerFiles
	src/headerDonut.h
	src/headerDonut.cpp
)

set(MainSrc
	src/donut.cpp
)

add_library(Factor SHARED ${headerFiles})
add_executable(Donut ${MainSrc})
target_link_libraries(Donut Factor)

set(Output ${CMAKE_CURRENT_SOURCE_DIR}/Output)
set_target_properties( Donut Factor
    PROPERTIES
    ARCHIVE_OUTPUT_DIRECTORY "${Output}/lib"
    LIBRARY_OUTPUT_DIRECTORY "${Output}/lib"
    RUNTIME_OUTPUT_DIRECTORY "${Output}/bin"
)

