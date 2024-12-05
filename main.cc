#include <iostream>

#include "color.h"
#include "vec3.h"
#include "ray.h"

color ray_color(const ray& r) {
  return color(0 , 0, 0);
}

int main() {
  auto aspect_ratio = 16.0 / 9.0;
  int image_width = 400;

  // Calculate the image height and make sure its >= 1
  int image_height = int(image_width / aspect_ratio);
  image_height = image_height < 1 ? 1 : image_height;

  //Viewport width and height (real-valued)
  // don't use aspect ratio because it's real valued.. use the ratio
  // of the rounded image width and height
  auto viewport_height = 2.0;
  auto viewport_width = viewport_height * (double(image_width) / image_height);
  int image_width = 256;
  int image_height = 256;

  std::cout << "P3\n" << image_width << " " << image_height << "\n255\n";

  for (int j = image_height-1; j >= 0; --j) {
    std::clog << "\rScanlines remaining: " << j << ' ' << std::flush;
    for (int i = 0; i < image_width; ++i) {
      auto pixel_color = color(double(i) / (image_width-1), double(j) / (image_height-1), 0.25);
      write_color(std::cout, pixel_color);
    }
  }

  std::clog << "\nDone.\n";
}