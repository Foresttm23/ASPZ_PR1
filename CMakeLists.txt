cmake_minimum_required(VERSION 3.10)
project(ASPZ_PR1)

set(CMAKE_C_STANDARD 99)

set(SRCS main.c input.c output.c)

set(PROCESS_SRC mylibs/process.c)
set(PROCESS1_SRC usr/lib/process1.c)

option(BUILD_SHARED_LIBS "Build using shared libraries" ON)

add_library(process ${PROCESS_SRC})

add_library(process1 ${PROCESS1_SRC})

add_executable(${PROJECT_NAME} ${SRCS})

target_link_libraries(${PROJECT_NAME} process process1)

target_include_directories(${PROJECT_NAME} PRIVATE mylibs usr/lib)