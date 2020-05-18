# --------------------- #
# (C) 2020 madoodia.com #
# --------------------- #



cmake_minimum_required(VERSION 3.3)

project($ENV{TARGET_NAME} CXX)

list( APPEND CMAKE_PREFIX_PATH "$ENV{HFS}/toolkit/cmake" )
find_package( Houdini REQUIRED )

SET(CMAKE_CXX_STANDARD 11)
SET(CMAKE_CXX_STANDARD_REQUIRED ON)

# set SOURCE_FILES
set(SOURCE
   main.cpp
)

# Add a library with two source files.
set( LIBRARY_NAME ${SOURCE} )
add_library( ${LIBRARY_NAME} SHARED
    SOP_Star.C
    SOP_Star.h
)
# Link against the Houdini libraries, and add required include directories and compile definitions.
target_link_libraries( ${library_name} Houdini )
# Configure several common target properties, such as its output directory.
houdini_configure_target( ${library_name} )