import 'package:falconbytesolutinosportfolio/constants/colors.dart';
import 'package:flutter/material.dart';

class SiteLogo extends StatelessWidget {
  const SiteLogo({super.key, this.fit = BoxFit.cover, required this.onTap, required this.isinverse, this.width = 0.087, this.height = 0.15});
  final VoidCallback onTap;
  final bool isinverse;
  final BoxFit fit;
  final double width;
  final double height;

  @override
  Widget build(BuildContext context) {
    return     InkWell(
      onTap: (){

      },
      // hoverColor: transparentColor,
      // focusColor: transparentColor,
      splashColor: transparentColor,
      child: Container(
        width: MediaQuery.of(context).size.width*width,
        height: MediaQuery.of(context).size.height*height,
        decoration: BoxDecoration(
            image: DecorationImage(
              fit: fit,
                image: isinverse == true ?  AssetImage('assets/falconB.png') :
                AssetImage('assets/removelogo.png'
                )
            )
        ),
      ),
    );
  }
}
