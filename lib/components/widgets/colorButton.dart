import 'package:flutter/material.dart';

class ColorButton extends StatelessWidget {
  final String? title;
  ColorButton(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
        height: 80,
        width: 80,
        decoration: BoxDecoration(
          borderRadius:
          BorderRadius.all(Radius.circular(40)),
          color: Colors.black,
        ),
        child: Icon(
          Icons.keyboard_arrow_right_rounded,
          color: Colors.white,
          size: 60,
        ),
    );
  }
}
