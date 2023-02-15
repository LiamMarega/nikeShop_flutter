import 'package:flutter/material.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';

TextStyle textTitle(BuildContext context) => TextStyle(
      fontSize: mediaWidth(0.08, context),
      fontWeight: FontWeight.w500,
    );

TextStyle textTitleBold(BuildContext context) => TextStyle(
      fontSize: mediaWidth(0.1, context),
      fontWeight: FontWeight.w700,
    );

TextStyle textDescription(BuildContext context) => TextStyle(
      fontSize: mediaWidth(0.04, context),
      fontWeight: FontWeight.w300,
    );
