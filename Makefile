
CXX = g++
CXXFLAGS = -Wall -Weffc++ -std=c++11 -c -Iinclude

SOURCES = $(wildcard src/*.cpp)
OBJECTS = $(patsubst src/%.cpp,bin/%.o,$(SOURCES))
TARGET = bin/server

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) -o $(TARGET) $(OBJECTS)

bin/%.o: src/%.cpp
	$(CXX) $(CXXFLAGS) $< -o $@

clean:
	rm -f bin/*

.PHONY: all clean
