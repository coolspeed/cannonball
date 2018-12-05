# CMake setup used for SDL2 Builds in Visual Studio.

# Set SDL2 instead of SDL1
set(SDL2 1)
# SET(CMAKE_FIND_LIBRARY_SUFFIXES ".lib" ".dll")

set(lib_base D:/lib)
set(sdl_root ${lib_base}/SDL2)

include_directories("${sdl_root}/include")

# Linking
link_directories(
    "${sdl_root}/lib/x64"
)

link_libraries(
    cannonball
    SDL2
)

add_definitions(-O3 -DSDL2)
 
# Location for Cannonball to create save files
# Used to auto-generate setup.hpp with various file paths
set(xml_directory ./)
set(sdl_flags "SDL_WINDOW_RESIZABLE")
