import 'package:flutter/material.dart';
import 'package:flutter_nike/utils/colors/index.dart';
import 'package:flutter_svg/flutter_svg.dart';

class AppBar extends StatelessWidget {
  const AppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(20, 30, 20, 0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: Colors.black,
                width: 2,
              ),
            ),
            child: SvgPicture.asset(
              'assets/icons/home.svg',
              color: primaryText,
            ),
          ),
          SvgPicture.asset(
            'assets/icons/home.svg',
            color: primaryText,
          ),
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              color: secondaryBackground,
              borderRadius: BorderRadius.circular(13),
              border: Border.all(
                color: borderIcons,
                width: 2,
              ),
            ),
            child: Icon(
              FFIcons.kbag,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 22,
            ),
          ),
        ],
      ),
    );
  }
}
