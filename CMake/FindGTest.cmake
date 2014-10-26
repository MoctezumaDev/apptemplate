set(GTEST_FIND_DEBUG TRUE CACHE BOOL "Also search for the debug version of the GTest library")

find_path(GTEST_INCLUDE_DIR NAMES gtest/gtest.h DOC "Directory containing gtest.h" )
	
find_library(GTEST_LIBRARY NAMES gtest libgtest  DOC "Path to GTest library" PATH_SUFFIXES bin)
find_library(GTEST_MAIN_LIBRARY NAMES gtest_main libgtest_main  DOC "Path to GTest main library" PATH_SUFFIXES bin)
if(GTEST_FIND_DEBUG)
	find_library(GTEST_LIBRARY_DEBUG NAMES gtest gtestd libgtest libgtestd DOC "Path to GTest debug library" PATH_SUFFIXES bin)
	find_library(GTEST_MAIN_LIBRARY_DEBUG NAMES gtest_main gtest_maind libgtest_main libgtest_maind DOC "Path to GTest main debug library" PATH_SUFFIXES bin)
endif(GTEST_FIND_DEBUG)

# handle the QUIETLY and REQUIRED arguments and set GTEST_FOUND to TRUE if 
# all listed variables are TRUE
include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(GTEST REQUIRED_VARS GTEST_LIBRARY GTEST_INCLUDE_DIR GTEST_MAIN_LIBRARY)

if(GTEST_FOUND)
    set(GTEST_INCLUDE_DIRS ${GTEST_INCLUDE_DIR})
    set(GTEST_LIBRARIES      ${GTEST_LIBRARY})
    set(GTEST_MAIN_LIBRARIES ${GTEST_MAIN_LIBRARY})
    set(GTEST_BOTH_LIBRARIES ${GTEST_LIBRARIES} ${GTEST_MAIN_LIBRARIES})
endif()
