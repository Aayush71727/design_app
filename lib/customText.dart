import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {

  CustomText({this.text,this.size,this.weight,this.color});

  final String text;
  final double size;
  final FontWeight weight;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        fontSize: size,
        fontWeight: weight,
        color: color,
      ),
    );
  }
}
