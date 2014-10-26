cmake_minimum_required(VERSION 2.8)

project( App )

# Some non-standard CMake modules
SET(CMAKE_MODULE_PATH ${App_SOURCE_DIR}/CMake)

# Enable Tests for CMake
include(CTest) 

# Name the application
SET(APP_NAME app)
SET(LIB_NAME ${APP_NAME}core)

# Compiler Settings
add_definitions( -std=c++0x )

add_subdirectory( src )
add_subdirectory( test )
