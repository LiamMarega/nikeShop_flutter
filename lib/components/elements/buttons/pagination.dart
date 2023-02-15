import 'package:flutter/material.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SimplePaginationButton extends StatefulWidget {
  Function onSubmit;

  SimplePaginationButton({required this.onSubmit});

  @override
  State<SimplePaginationButton> createState() => _SimplePaginationButtonState();
}

class _SimplePaginationButtonState extends State<SimplePaginationButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onSubmit();
      },
      child: Container(
        width: mq(context).width * 0.3,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color(0xffEEEFFA)),
        padding: EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            FaIcon(
              FontAwesomeIcons.solidCircleDown,
              color: gc(context).primary,
              size: 15,
            ),
            Text('Cargar más',
                style: TextStyle(
                  color: gc(context).primary,
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
      ),
    );
  }
}
