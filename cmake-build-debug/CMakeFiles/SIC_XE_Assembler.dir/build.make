# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2018.1.1\bin\cmake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2018.1.1\bin\cmake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug"

# Include any dependencies generated for this target.
include CMakeFiles/SIC_XE_Assembler.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/SIC_XE_Assembler.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/SIC_XE_Assembler.dir/flags.make

CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj: ../src/AssemblyListing.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\AssemblyListing.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\AssemblyListing.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\AssemblyListing.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\AssemblyListing.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\AssemblyListing.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\AssemblyListing.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj: ../src/ObjectProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\ObjectProgram.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\ObjectProgram.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\ObjectProgram.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\ObjectProgram.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\ObjectProgram.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\ObjectProgram.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj: ../src/OpCodeTable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\OpCodeTable.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\OpCodeTable.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\OpCodeTable.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\OpCodeTable.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\OpCodeTable.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\OpCodeTable.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj: ../src/SourceLine.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\SourceLine.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SourceLine.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SourceLine.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\SourceLine.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SourceLine.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\SourceLine.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj: ../src/SourceProgram.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\SourceProgram.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SourceProgram.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SourceProgram.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\SourceProgram.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SourceProgram.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\SourceProgram.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj: ../src/SymbolTable.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\SymbolTable.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SymbolTable.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SymbolTable.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\SymbolTable.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\SymbolTable.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\SymbolTable.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\main.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\main.cpp"

CMakeFiles/SIC_XE_Assembler.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\main.cpp" > CMakeFiles\SIC_XE_Assembler.dir\main.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\main.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\main.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj


CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/flags.make
CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj: CMakeFiles/SIC_XE_Assembler.dir/includes_CXX.rsp
CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj: ../src/OpInfo.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\SIC_XE_Assembler.dir\src\OpInfo.cpp.obj -c "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\OpInfo.cpp"

CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\OpInfo.cpp" > CMakeFiles\SIC_XE_Assembler.dir\src\OpInfo.cpp.i

CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\src\OpInfo.cpp" -o CMakeFiles\SIC_XE_Assembler.dir\src\OpInfo.cpp.s

CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.requires:

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.requires

CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.provides: CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.requires
	$(MAKE) -f CMakeFiles\SIC_XE_Assembler.dir\build.make CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.provides.build
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.provides

CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.provides.build: CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj


# Object files for target SIC_XE_Assembler
SIC_XE_Assembler_OBJECTS = \
"CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj" \
"CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj"

# External object files for target SIC_XE_Assembler
SIC_XE_Assembler_EXTERNAL_OBJECTS =

SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/build.make
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/linklibs.rsp
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/objects1.rsp
SIC_XE_Assembler.exe: CMakeFiles/SIC_XE_Assembler.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable SIC_XE_Assembler.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\SIC_XE_Assembler.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/SIC_XE_Assembler.dir/build: SIC_XE_Assembler.exe

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/build

CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/AssemblyListing.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/ObjectProgram.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/OpCodeTable.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/SourceLine.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/SourceProgram.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/SymbolTable.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/main.cpp.obj.requires
CMakeFiles/SIC_XE_Assembler.dir/requires: CMakeFiles/SIC_XE_Assembler.dir/src/OpInfo.cpp.obj.requires

.PHONY : CMakeFiles/SIC_XE_Assembler.dir/requires

CMakeFiles/SIC_XE_Assembler.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\SIC_XE_Assembler.dir\cmake_clean.cmake
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/clean

CMakeFiles/SIC_XE_Assembler.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler" "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler" "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug" "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug" "C:\Users\Mohamed Mashaal\Desktop\SIC Assembler\SIC-XE-Assembler\cmake-build-debug\CMakeFiles\SIC_XE_Assembler.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/SIC_XE_Assembler.dir/depend
