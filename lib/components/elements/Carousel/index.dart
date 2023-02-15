import 'dart:math';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_nike/components/elements/Carousel/parts/CardOffers/index.dart';
import 'package:flutter_nike/components/elements/buttons/solid.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';
import 'package:flutter_nike/utils/textStyles/index.dart';

class CarouselOffers extends StatelessWidget {
  const CarouselOffers({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      options: CarouselOptions(
        height: 230.0,
        autoPlay: false,
        viewportFraction: 1,
      ),
      items: [1, 2, 3, 4, 5].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CardOffers();
          },
        );
      }).toList(),
    );
  }
}
