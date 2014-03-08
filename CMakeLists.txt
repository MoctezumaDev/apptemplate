cmake_minimum_required(VERSION 2.8)

project( App )

# Enable Tests for CMake
include(CTest) 

# Name the application
SET(APP_NAME app)
SET(LIB_NAME ${APP_NAME}core)

# Compiler Settings
add_definitions( -std=c++0x )

# Locate GTest
find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

add_subdirectory( src )
add_subdirectory( test )
