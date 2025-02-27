import 'package:falconbytesolutinosportfolio/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomButton extends StatelessWidget {
  final String title;
  final VoidCallback onTap;
  final double height;
  final double width;
  final double elevation;
  final FontWeight fontWeight;
  final double fontsize;
  final Color color;
  final Color textcolor;
  const CustomButton(
      {this.textcolor = whiteColor,
      this.fontsize = 15,
      this.fontWeight = FontWeight.w700,
      this.elevation = 0,
      required this.title,
      required this.onTap,
      this.height = 0.05,
      this.width = 0.5,
      this.color = blueColor});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      splashColor: transparentColor,
      borderRadius: BorderRadius.circular(15),
      child: Material(
        borderRadius: BorderRadius.circular(10),
        elevation: elevation,
        child: Container(
          alignment: Alignment.center,
          height: MediaQuery.sizeOf(context).height * height,
          width: MediaQuery.sizeOf(context).width * width,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(7),
            color: color,
            // gradient: LinearGradient(
            //   colors: [
            //     color.withOpacity(0.9), // Slightly darker at the start
            //     color.withOpacity(0.7),
            //   ],
            //   begin: Alignment.centerLeft,
            //   end: Alignment.centerRight,
            // ),
          ),
          child: mediumText(
              title: title,
              context: context,
              fontSize: fontsize,
              fontWeight: fontWeight,
              color: textcolor),
        ),
      ),
    );
  }
}
