import 'package:flutter/material.dart';
import 'package:flutter_nike/components/elements/Carousel/index.dart';
import 'package:flutter_nike/components/elements/TextCarousel/index.dart';

import 'package:flutter_nike/components/elements/appBar/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        appBarComp(context),
        CarouselOffers(),
        const SizedBox(height: 25),
        TextCarousel(),
      ],
    );
  }
}
