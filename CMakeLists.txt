cmake_minimum_required(VERSION 3.20)

project(run) 

set(CMAKE_CXX_FLAGS  "${CMAKE_CXX_FLAGS} -std=c++0x")

set(GRADINGLIB_SOURCES ./gradinglib/gradinglib.cpp)

set(GRADING_SOURCES ./grading/grading.cpp)

set(SOURCES
    ${GRADINGLIB_SOURCES}

    ${GRADING_SOURCES}
    main.cpp
    td3.cpp
    support.cpp
    ./grading/memplumber.cpp
)


add_executable(run ${SOURCES})

target_include_directories(run PRIVATE . grading gradinglib)
