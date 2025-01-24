import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../constants/colors.dart';


Widget largeText(
    {required String title,
    context,
    double fontSize = 28,
    fontWeight = FontWeight.w700,
      color = primaryTextColor,
    }) {
  return Text(
    title,
    style: TextStyle(
        fontSize:  fontSize.toDouble(),
        fontWeight: fontWeight,
      fontFamily: 'ReadexPro',
      color: color,
    ),
  );
}

Widget mediumText(
    {required String title,
      context,
      double fontSize = 26,
      fontWeight = FontWeight.w400,
     Color color = primaryTextColor,
    }) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'ReadexPro',
      fontSize:  fontSize.toDouble(),
      fontWeight: fontWeight,
      color: color,
      letterSpacing: 1.2
    ),
  );
}


Widget smallText(
    {required String title,
      context,
      double fontSize = 12,
      fontWeight = FontWeight.w400,
      color = secondaryTextColor,
      double height = 0.5,
    }) {
  return Text(
    title,
    style: TextStyle(
      fontFamily: 'ReadexPro',
      fontSize: fontSize.toDouble(),
      fontWeight: fontWeight,
      color: color,
      height: height.toDouble(),
    ),
    softWrap: true,
    maxLines: 10, // Adjust the number of lines you want before truncation
    overflow: TextOverflow.ellipsis, // Handles overflow by displaying ellipsis
  );
}

// Widget gradienttextfield(double radius, double height, double width,  BuildContext context,String hint, TextEditingController controller, Color gradientcolor1, Color gradientcolor2,  ){
//   return Gradienttextfield(
//     controller: controller,
//     radius: MediaQuery.of(context).size.height*radius,
//     height:  MediaQuery.of(context).size.height*height,
//     width: MediaQuery.of(context).size.width*width,
//     colors:  [gradientcolor1, gradientcolor2],
//     text: hint,
//     fontColor: whiteColor,
//     fontSize: 15,
//     fontWeight: FontWeight.w300,
//   );
// }
Widget gradienttextfield(double height,
    double width,  BuildContext context,
    String hint,
    TextEditingController controller, Color gradientcolor1,
    Color gradientcolor2, Color bordergradientcolor,  int maxlines ){
  return Container(

    width: MediaQuery.of(context).size.width*width,
    height: MediaQuery.of(context).size.height*height,
    decoration:  BoxDecoration(
        border: GradientBoxBorder(
            width: 1.3,
            gradient: LinearGradient(colors: [
              whiteColor.withOpacity(0.5),
              bordergradientcolor.withOpacity(0.2),
            ]
            )
        ),


        gradient: LinearGradient(
          colors: [
            gradientcolor1.withOpacity(0.4),
            gradientcolor2.withOpacity(0.1)
          ]
        ),
        borderRadius: BorderRadius.circular(7.0)),

    child: TextField(

      controller: controller,
      cursorColor: whiteColor.withOpacity(0.5),
      style: TextStyle(
        color: whiteColor.withOpacity(0.5),
        fontSize: 16.0,
        fontWeight: FontWeight.w200,
        fontFamily: 'ReadexPro',
      ),
      maxLines: maxlines,
      
      decoration: InputDecoration(
        


          hintText: hint,

          hintStyle: TextStyle(
              color: whiteColor.withOpacity(0.5),
              fontSize: 15.0,
              fontWeight: FontWeight.w200,
            fontFamily: 'ReadexPro',
            


          ),
          enabledBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent)),
          focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.transparent))),
    ),
  );

}