# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.24

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\cmake-3.24.0-rc3-windows-x86_64\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\cmake-3.24.0-rc3-windows-x86_64\bin\cmake.exe" -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++"

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\cbuild"

# Include any dependencies generated for this target.
include CMakeFiles/Factor.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/Factor.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/Factor.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/Factor.dir/flags.make

CMakeFiles/Factor.dir/src/headerDonut.cpp.obj: CMakeFiles/Factor.dir/flags.make
CMakeFiles/Factor.dir/src/headerDonut.cpp.obj: C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/src/headerDonut.cpp
CMakeFiles/Factor.dir/src/headerDonut.cpp.obj: CMakeFiles/Factor.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir="C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\cbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/Factor.dir/src/headerDonut.cpp.obj"
	C:\PROGRA~1\msys64\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/Factor.dir/src/headerDonut.cpp.obj -MF CMakeFiles\Factor.dir\src\headerDonut.cpp.obj.d -o CMakeFiles\Factor.dir\src\headerDonut.cpp.obj -c "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\src\headerDonut.cpp"

CMakeFiles/Factor.dir/src/headerDonut.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/Factor.dir/src/headerDonut.cpp.i"
	C:\PROGRA~1\msys64\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\src\headerDonut.cpp" > CMakeFiles\Factor.dir\src\headerDonut.cpp.i

CMakeFiles/Factor.dir/src/headerDonut.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/Factor.dir/src/headerDonut.cpp.s"
	C:\PROGRA~1\msys64\mingw64\bin\C__~1.EXE $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\src\headerDonut.cpp" -o CMakeFiles\Factor.dir\src\headerDonut.cpp.s

# Object files for target Factor
Factor_OBJECTS = \
"CMakeFiles/Factor.dir/src/headerDonut.cpp.obj"

# External object files for target Factor
Factor_EXTERNAL_OBJECTS =

C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/Output/bin/libFactor.dll: CMakeFiles/Factor.dir/src/headerDonut.cpp.obj
C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/Output/bin/libFactor.dll: CMakeFiles/Factor.dir/build.make
C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/Output/bin/libFactor.dll: CMakeFiles/Factor.dir/linklibs.rsp
C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/Output/bin/libFactor.dll: CMakeFiles/Factor.dir/objects1.rsp
C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/Output/bin/libFactor.dll: CMakeFiles/Factor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir="C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\cbuild\CMakeFiles" --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library \"C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\Output\bin\libFactor.dll\""
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\Factor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/Factor.dir/build: C:/Users/chong/OneDrive/Personal_Data/My_Resume/Project/Site_Project/4.\ Donut_Program_With_C&C++/Output/bin/libFactor.dll
.PHONY : CMakeFiles/Factor.dir/build

CMakeFiles/Factor.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\Factor.dir\cmake_clean.cmake
.PHONY : CMakeFiles/Factor.dir/clean

CMakeFiles/Factor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++" "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++" "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\cbuild" "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\cbuild" "C:\Users\chong\OneDrive\Personal_Data\My_Resume\Project\Site_Project\4. Donut_Program_With_C&C++\cbuild\CMakeFiles\Factor.dir\DependInfo.cmake" --color=$(COLOR)
.PHONY : CMakeFiles/Factor.dir/depend
