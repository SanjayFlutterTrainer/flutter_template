import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecom/widgets/category_list.dart';
import 'package:ecom/widgets/image_carousel.dart';
import 'package:ecom/widgets/product_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Home')),
        body: SingleChildScrollView(
          child: Column(
            children: [
              ImageCarousel(),
              CategoryListview(),
              GridView.builder(
                physics:
                    NeverScrollableScrollPhysics(), // Disable GridView's own scrolling
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10.0, // Spacing between columns
                    mainAxisSpacing: 10.0,
                    childAspectRatio: 1,
                    crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return ProductCard();
                },
              )
            ],
          ),
        ));
  }
}
