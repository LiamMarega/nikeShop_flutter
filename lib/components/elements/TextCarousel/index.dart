import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike/utils/Jsons/filterTypes.dart';

class TextCarousel extends StatelessWidget {
  const TextCarousel({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 230.0,
        enableInfiniteScroll: false,
        viewportFraction: 0.2,
      ),
      items: shoesTypes.map((data) {
        return Builder(
          builder: (BuildContext context) {
            return Text(data['name'],
                style: TextStyle(fontWeight: FontWeight.bold));
          },
        );
      }).toList(),
    );
  }
}
