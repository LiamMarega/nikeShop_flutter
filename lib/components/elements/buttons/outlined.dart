// ignore_for_file: prefer_if_null_operators

import 'package:flutter/material.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';

class ButtonOutlined extends StatefulWidget {
  String text;
  dynamic onPressed;
  Color? color, colorText;
  bool? disableButton;
  double? fontSize, height, width;

  ButtonOutlined({
    this.onPressed,
    this.color,
    this.fontSize,
    this.height,
    this.colorText,
    this.width,
    this.disableButton,
    required this.text,
  });

  @override
  _ButtonOutlinedState createState() => _ButtonOutlinedState();
}

class _ButtonOutlinedState extends State<ButtonOutlined> {
  @override
  Widget build(BuildContext context) {
    dynamic textStyle = TextStyle(
        color: widget.colorText ?? gc(context).primary,
        fontWeight: FontWeight.bold,
        fontSize: widget.fontSize ?? 18);

    return Container(
      height: widget.height ?? 50,
      width: widget.width ?? MediaQuery.of(context).size.width * 0.7,
      decoration: BoxDecoration(
          border: Border.all(color: gc(context).primary),
          borderRadius: BorderRadius.circular(10)),
      child: TextButton(
          onPressed: () {
            widget.onPressed == null ? () {} : widget.onPressed!();
          },
          child: Text(
            widget.text,
            style: textStyle,
          )),
    );
  }
}
