CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17
TARGET = raytracer
SRCS = main.cc
HEADERS = vec3.h color.h ray.h

all: $(TARGET)

$(TARGET): $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET)