cmake_minimum_required(VERSION 3.19)
project(statistics C)

set(CMAKE_C_STANDARD 99)

add_executable(statistics lib/main.c sort.c sort.h)