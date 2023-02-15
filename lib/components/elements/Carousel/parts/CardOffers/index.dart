import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_nike/components/elements/buttons/solid.dart';
import 'package:flutter_nike/utils/shortcuts/index.dart';
import 'package:flutter_nike/utils/textStyles/index.dart';

class CardOffers extends StatelessWidget {
  const CardOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: mediaHeight(0.05, context)),
      child: Container(
          width: MediaQuery.of(context).size.width,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            color: const Color.fromRGBO(239, 239, 239, 1),
            borderRadius: BorderRadius.circular(15),
          ),
          child: Row(
            children: [
              Container(
                padding: EdgeInsets.only(left: 15.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          '20%',
                          style: textTitleBold(context),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text('Discount', style: textTitle(context))
                      ],
                    ),
                    Text(
                      'on your first purchase',
                      style: textDescription(context),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    ButtonSolid(
                      text: 'Shop now',
                      width: mq(context).width * 0.3,
                      height: mq(context).height * 0.05,
                      fontSize: mq(context).width * 0.04,
                      color: Colors.black,
                      onPressed: () {},
                    )
                  ],
                ),
              ),
              Container(
                width: mq(context).width * 0.5,
                padding: EdgeInsets.only(top: 100.0),
                child: FittedBox(
                  alignment: Alignment.bottomLeft,
                  fit: BoxFit.fitWidth,
                  child: Transform.rotate(
                    alignment: Alignment.bottomLeft,
                    angle: -pi / 4,
                    child: Image.asset(
                      'assets/images/shoes_green.png',
                    ),
                  ),
                ),
              ),
            ],
          )),
    );
  }
}
