Cannonball - OutRun Engine
==========================

See [Reassembler Blog](http://reassembler.blogspot.co.uk/).

Credits
-------

* Chris White - Project creator.
* Arun Horne  - Cross platform work.

Getting Started
---------------

Cannonball has been successfully built for Windows, Mac OS X, Linux, Open Pandora and the Raspberry Pi. 

* Install your favourite C++ environment (e.g. GCC, Visual Studio, Xcode, MingGW etc.)
* Install [CMake](http://www.cmake.org/). This generates your platform and compiler build files. 
* Extract the [Boost Library](http://www.boost.org/) somewhere, for example: `c:\coding\lib\boost_1_68_0`
* Extract the [SDL Library](https://www.libsdl.org/download-2.0.php) somewhere, for example: `c:\coding\lib\SDL2`
* Read the SDL documentation & compile the SDL Library for your system.
* Extract the Cannonball code somewhere, for example: `C:\coding\cannonball`
* You may need to create a `.cmake` file for your system to configure specific options. See the `cmake` subdirectory for more details. If not, the `sdl2_vs.cmake` file will be used.

Build
-----

* Run CMake to generate the relevant build files for your compiler. You can optionally pass `-DTARGET=filename` to pass a custom `.cmake` file
* Compile using your chosen compiler. Further details below.

###

    mkdir build
    cd build

### Non-IDE (e.g. straight GCC)
    
    cmake -G "Insert Generator Name Here" ../cmake
    make

### MinGW

    cmake -G "MinGW Makefiles" -DTARGET=mingw ../cmake
    mingw32-make
    
### Visual Studio 2017

    cmake -G "Visual Studio 15" -DTARGET=sdl2_vs ../cmake

* Copy `SDL.DLL` and the `roms` subdirectory to the `build` directory.
* Right click the `cannonball` project in the IDE and choose `Set as StartUp project`. 
* You can then compile, debug and run from Visual Studio as expected.

### Mac OSX

    cmake -G "Unix Makefiles" -DTARGET:STRING=macosx ../cmake
    make

Run
---

* Copy the OutRun revision B romset to the roms subdirectory. Rename the files if necessary.
* Copy or link the roms subdirectory to whereever your executable resides.

###

    ln -s ../roms roms
    ./outrun
