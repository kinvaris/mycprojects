cmake_minimum_required(VERSION 3.6)
project(employee_management)

set(CMAKE_CXX_STANDARD 11)

set(SOURCE_FILES main.cpp src/Person.h src/Person.cpp)
add_executable(employee_management ${SOURCE_FILES})