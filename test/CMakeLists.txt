set(CMAKE_PREFIX_PATH "${CMAKE_SOURCE_DIR}/dependencies/Build/Debug/gtest/")

message( STATUS ${CMAKE_SOURCE_DIR} )

message( STATUS ${CMAKE_PREFIX_PATH} )

FIND_PACKAGE(GTest REQUIRED)

include_directories( ${CMAKE_SOURCE_DIR}/src ${CMAKE_SOURCE_DIR}/include ${GTEST_INCLUDE_DIR})

add_executable( AllTests
    AllTests.cpp
    AppTest.cpp
)

target_link_libraries( AllTests
    ${LIB_NAME}
    ${GTEST_LIBRARIES}
    pthread
)

add_test(AllTests AllTests)
