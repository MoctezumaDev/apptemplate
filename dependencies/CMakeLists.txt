CMAKE_MINIMUM_REQUIRED(VERSION 2.8.8) # 2.8.5 needed for full URL support, 2.8.8 now needed for new Xcode support

PROJECT(AppDependencies)

# Some non-standard CMake modules
SET(CMAKE_MODULE_PATH ${AppDependencies_SOURCE_DIR}/../CMake)

IF(NOT APP_DEPS_DOWNLOAD_DIR)
    SET(APP_DEPS_DOWNLOAD_DIR ${AppDependencies_SOURCE_DIR}/Downloads)
    MESSAGE("No APP_DEPS_DOWNLOAD_DIR specified, to ${APP_DEPS_DOWNLOAD_DIR}") 
ENDIF(NOT APP_DEPS_DOWNLOAD_DIR)

SET(internal_GTEST ON)

INCLUDE(ExternalGTest)