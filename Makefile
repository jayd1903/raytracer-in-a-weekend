CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17
TARGET = raytracer
SRCS = main.cc
HEADERS = rtweekend.h hittable.h sphere.h hittable_list.h 

all: $(TARGET)

$(TARGET): $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET) *.ppm