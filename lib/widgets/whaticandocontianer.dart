import 'package:falconbytesolutinosportfolio/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

import '../constants/images_path.dart';
import 'custom_sizedBox.dart';
import 'imageasset.dart';



class Whaticandocontianer extends StatelessWidget {
  final String text;
  final String image;

  const Whaticandocontianer({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
      width: MediaQuery.of(context).size.width * 0.35,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),

        border: GradientBoxBorder(
          width: 2.5,


            gradient: LinearGradient(colors: [
              theme.colorScheme.onSurfaceVariant,
              theme.colorScheme.onErrorContainer

            ])),

        boxShadow: [

          BoxShadow(
            color: theme.colorScheme.onSurfaceVariant.withOpacity(0.17),
            spreadRadius: 12, // Spread radius
            blurRadius: 8, // Blur radius
            offset:
            Offset(1, 1), // Shadow position: (x, y)
          )
        ],
        gradient: LinearGradient(colors: [
          theme.colorScheme.onPrimary.withOpacity(0.28),
          theme.colorScheme.onSecondaryFixedVariant.withOpacity(0.35),
        ]),

      ),
      child: Column(
        children: [
          Sized(height: 0.0154,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Sized(width: 0.015,),

              imageAsset(
                  context, image, 0.12, 0.25, BoxFit.cover, 0 ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              largeText(
                  title: text, fontSize: 24.0, color: theme.colorScheme.inversePrimary, fontWeight: FontWeight.w400),

              Sized(width: 0.015,),
            ],
          )       ,

          Sized(height: 0.0154,),
        ],
      ),
    );
  }
}

class WhaticandocontianerMOBILE extends StatelessWidget {
  final String text;
  final String image;

  const WhaticandocontianerMOBILE({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: MediaQuery.of(context).size.height * 0.2,
      width: MediaQuery.of(context).size.width * 0.43,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),

        border: GradientBoxBorder(
          width: 2.0,


            gradient: LinearGradient(colors: [
              theme.colorScheme.onSurfaceVariant,
              theme.colorScheme.onErrorContainer

            ])),

        boxShadow: [

          BoxShadow(
            color: theme.colorScheme.onSurfaceVariant.withOpacity(0.15),
            spreadRadius: 12, // Spread radius
            blurRadius: 8, // Blur radius
            offset:
            Offset(2, 1), // Shadow position: (x, y)
          )
        ],
        gradient: LinearGradient(colors: [
          theme.colorScheme.onPrimary.withOpacity(0.28),
          theme.colorScheme.onSecondaryFixedVariant.withOpacity(0.35),
        ]),

      ),
      child: Column(
        children: [
          Sized(height: 0.0154,),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Sized(width: 0.015,),

              imageAsset(
                  context, image, 0.28, 0.11, BoxFit.fill, 0 ),
            ],
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              largeText(
                  title: text, fontSize: 13.0, color: theme.colorScheme.inversePrimary, fontWeight: FontWeight.w400),

              Sized(width: 0.015,),
            ],
          )       ,

          Sized(height: 0.0154,),
        ],
      ),
    );
  }
}
