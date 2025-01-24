import 'package:flutter/material.dart';

Widget gradientLine(BuildContext context, Color color, double width){
  return Container(
    height: 3,
    width: MediaQuery.of(context).size.width*width,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: color,
      boxShadow: [
        BoxShadow(
          color: color,
          spreadRadius: 1, // Spread radius
          blurRadius: 1, // Blur radius
          offset: Offset(1, 1 ), // Shadow position: (x, y)

        )
      ],
    ),
  );
}