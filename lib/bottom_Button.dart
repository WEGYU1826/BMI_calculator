import 'package:flutter/material.dart';
import 'const.dart';

class BottomButton extends StatelessWidget {
  BottomButton({required this.onTop, required this.buttomTitle});
  final VoidCallback onTop;
  final String buttomTitle;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTop,
      child: Container(
        color: bottomContainerColor,
        margin: const EdgeInsets.only(top: 10.0),
        width: double.infinity,
        height: bottomContaineHeight,
        child: Center(
          child: Text(
            buttomTitle,
            style: const TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
    );
  }
}
