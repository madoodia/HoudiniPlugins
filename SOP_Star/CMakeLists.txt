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
    SOP_Star.C
)

# Add a library with two source files.
set( LIBRARY_NAME SOP_Star )
houdini_generate_proto_headers( FILES SOP_Star.C )
add_library( ${LIBRARY_NAME} SHARED ${SOURCE}    
)
# Link against the Houdini libraries, and add required include directories and compile definitions.
target_link_libraries( ${LIBRARY_NAME} Houdini )
target_include_directories( ${LIBRARY_NAME} PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR}
)
# Configure several common target properties, such as its output directory.
# houdini_configure_target( ${LIBRARY_NAME} ) # for installing .so (.dll) file in $HOME/HoudiniX.Y/dso