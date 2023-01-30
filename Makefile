CXX := g++
CFLAGS := -std=c++17 -Wall -Wextra -g

SOURCE_FILE := src/runner.cpp
OBJECT_FILE := runner.o

SFML_INCLUDE := -Ilib/SFML/include 
SFML_LINKERS := -Llib/SFML/bin/sfml-window -Llin/SFML/bin/sfml-window -Llib/SFML/bin/sfml-system

runner: runner.o
	$(CXX) $(CFLAGS) -o build/pathfinder.exe $(OBJECT_FILE) $(SFML_INCLUDE) $(SFML_LINKERS)

$(OBJECT_FILE): $(SOURCE_FILE)
	$(CXX) $(CFLAGS) -c $(SOURCE_FILE) $(SFML_INCLUDE) $(SFML_LINKERS)

.PHONY: clean 
clean: 
	del /q /f build\*.exe
	del /q /f *.o
	echo cleaned all executables and object files

run: 
	.\build\pathfinder.exe