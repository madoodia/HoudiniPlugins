cmake_minimum_required( VERSION 3.6 )

project( HDK_Project )

# CMAKE_PREFIX_PATH must contain the path to the toolkit/cmake subdirectory of
# the Houdini installation. See the "Compiling with CMake" section of the HDK
# documentation for more details, which describes several options for
# specifying this path.
list( APPEND CMAKE_PREFIX_PATH "$ENV{HFS}/toolkit/cmake" )

# Locate Houdini's libraries and header files.
# Registers an imported library target named 'Houdini'.
find_package( Houdini REQUIRED )

# set( TARGET_NAME OBJ_Lamp )

# Code generation for the embedded DS file in OBJ_Lamp.C.

# Add a library and its source files.
add_library( $ENV{TARGET_NAME} SHARED
    OBJ_Lamp.C
)

# Link against the Houdini libraries, and add required include directories and
# compile definitions.
target_link_libraries( $ENV{TARGET_NAME} Houdini )

# Include ${CMAKE_CURRENT_BINARY_DIR} for the generated header.
target_include_directories( $ENV{TARGET_NAME} PRIVATE
    ${CMAKE_CURRENT_BINARY_DIR}
)

# Sets several common target properties, such as the library's output directory.
# houdini_configure_target( ${library_name} )
