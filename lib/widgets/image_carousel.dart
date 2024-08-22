import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/utils/screen_utis.dart';
import 'package:flutter/material.dart';

class ImageCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = screenHeight(context);
    double width = screenWidth(context);
    List<int> list = [1, 2, 3, 4, 5];
    return Container(
        child: CarouselSlider(
      options: CarouselOptions(height: height / 4.2),
      items: list
          .map((item) => Container(
                child: Center(child: Text(item.toString())),
                color: const Color.fromARGB(255, 211, 204, 204),
              ))
          .toList(),
    ));
  }
}
