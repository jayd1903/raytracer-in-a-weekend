CXX = g++
CXXFLAGS = -Wall -Wextra -std=c++17
TARGET = raytracer
SRCS = main.cc
HEADERS = vec3.h color.h ray.h camera.h rtweekend.h hittable.h sphere.h hittable_list.h 

all: $(TARGET)

$(TARGET): $(SRCS) $(HEADERS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(SRCS)

clean:
	rm -f $(TARGET) *.ppm