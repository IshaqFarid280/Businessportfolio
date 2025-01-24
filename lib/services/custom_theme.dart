
import 'package:flutter/material.dart';
import '../constants/colors.dart';


ThemeData lightTheme(){
  return ThemeData(
    useMaterial3: false,
    primaryColor: blackColor,

    colorScheme: ColorScheme.light(
      inversePrimary: whiteColor,
      //gradient color for main body
      onPrimaryFixed: darkcolor,
      onInverseSurface: lightindigocolor,

      //get in touch button color
      onSurfaceVariant: lightbluecolor,
      onErrorContainer: darkindigoColor,

      onError: skyColor,


      //border of gradient main
      onPrimaryContainer: lightwhiteColor,
      onPrimaryFixedVariant: lightskyColor,


      //about me left and right line color
      onSecondaryContainer: ultralightskyColor,

      //what i can do cards color
      onPrimary: simplelightskyColor,
      onSecondaryFixedVariant: lightIndigoColor,


      //indigo color my projects section
      onSecondary: ultradarkindigoColor,


      //container color of contact section
      onTertiaryContainer: darkblueColor,
      onTertiaryFixed: lightpeachColor,


        //container border color of contact section
      onSurface: simpleskyColor,
      onBackground: simplelightindigiColor,



      //textforfield gradient color
      onTertiary: lightgreyColor,
      onSecondaryFixed: simplelightgreyColor,

      //textforfield gradient border color
      onTertiaryFixedVariant: simplestlightgreyColor,

      //button in contact section
      outline: lightsindigoCOlor








    ),


  );
}
ThemeData darkTheme(){
  return ThemeData(
    useMaterial3: false,
    primaryColor: whiteColor,
      colorScheme: ColorScheme.dark(
        inversePrimary: blackColor,
        //gradient color for main body
        onPrimaryFixed: darkcolor,
        onInverseSurface: lightindigocolor,



        //get in touch button color
        onSurfaceVariant: lightbluecolor,
        onErrorContainer: darkindigoColor,
        onError: skyColor,

          //border of gradient main
          onPrimaryContainer: lightwhiteColor,
          onPrimaryFixedVariant: lightskyColor,



          //about me left and right line color
          onSecondaryContainer: ultralightskyColor,


          //what i can do cards color
          onPrimary: simplelightskyColor,
          onSecondaryFixedVariant: lightIndigoColor,


        //indigo color my projects section
        onSecondary: ultradarkindigoColor,



        //container color of contact section
        onTertiaryContainer: darkblueColor,
        onTertiaryFixed: lightpeachColor,



        //container border color of contact section
        onSurface: simpleskyColor,
        onBackground: simplelightindigiColor,



        //textforfield gradient color
        onTertiary: lightgreyColor,
        onSecondaryFixed: simplelightgreyColor,

        //textforfield gradient border color
        onTertiaryFixedVariant: simplestlightgreyColor,

          //button in contact section
          outline: lightsindigoCOlor





      ),
  );
}