import 'package:flutter/material.dart';
import 'const.dart';

class ReuseableFont extends StatelessWidget {
  ReuseableFont({required this.iconData, this.label});

  final IconData iconData;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconData,
          size: size,
        ),
        const SizedBox(
          height: hight,
        ),
        Text(
          label!,
          style: labelTextStyle,
        ),
      ],
    );
  }
}
