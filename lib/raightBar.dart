import 'constans.dart';
import 'package:flutter/material.dart';

class RaightBar extends StatelessWidget {
  final double barWidth;

  const RaightBar({Key? key, required this.barWidth}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          height: 25,
          width: barWidth,
          decoration: BoxDecoration(
              color: accentHexcolor,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(20),
              )),
        )
      ],
    );
  }
}
