import 'package:flutter/material.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';
import 'package:flutter_svg/flutter_svg.dart';

AppBar appBarComp(context) {
  return AppBar(
    backgroundColor: Colors.white,
    elevation: 200.0,
    shadowColor: Colors.transparent,
    leading: Container(
      height: mq(context).width * 0.5,
      margin: const EdgeInsets.all(6.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black38, // Color del borde
          width: 1.5, // Ancho del borde
        ),

        borderRadius: BorderRadius.circular(
            8), // Establece el radio de borde en cero para un borde cuadrado
      ),
      child: IconButton(
        icon: const Icon(Icons.menu),
        color: Colors.black,
        onPressed: () {
          // Acción al presionar el IconButton
        },
      ),
    ),
    title: SizedBox(
      width: 100, // Ancho deseado del contenedor
      height: 30, // Altura deseada del contenedor
      child: SvgPicture.asset(
        'assets/icons/nike.svg',
      ),
    ),
    actions: <Widget>[
      Container(
        height: mq(context).height * 0.11,
        width: mq(context).width * 0.12,
        margin: const EdgeInsets.all(7.0),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black38, // Color del borde
            width: 1.5, // Ancho del borde
          ),
          borderRadius: BorderRadius.circular(
              8), // Establece el radio de borde en cero para un borde cuadrado
        ),
        child: IconButton(
          icon: const Icon(Icons.shopping_bag_outlined),
          color: Colors.black,
          onPressed: () {
            // Acción al presionar el IconButton
          },
        ),
      ),
    ],
  );
}
