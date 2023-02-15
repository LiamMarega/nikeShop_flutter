import 'package:flutter/material.dart';

import 'package:flutter_nike/components/elements/appBar/index.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      appBarComp(context),
    ]);
  }
}
