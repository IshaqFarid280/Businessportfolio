import 'package:falconbytesolutinosportfolio/widgets/text_widgets.dart';
import 'package:flutter/material.dart';




class GradientButton extends StatelessWidget {
  final String text;
  final double textsize;
  final FontWeight weight;
  final Color textcolor;
  final double horizontalpadding;
  final double verticalpadding;
  final bool isshadow;

  const GradientButton({super.key, this.horizontalpadding = 22.0, this.verticalpadding = 8, this.isshadow = false,  required this.text, required this.textsize, required this.textcolor, required this.weight});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
        padding: EdgeInsets.symmetric(horizontal: horizontalpadding, vertical: verticalpadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              isshadow  == true ?
              BoxShadow(
                color:theme.colorScheme.onError,
                spreadRadius: 2, // Spread radius
                blurRadius: 8, // Blur radius
                offset: Offset(1, 1), // Shadow position: (x, y)

              )
                  :BoxShadow(


              )
            ],
            gradient: LinearGradient(colors: [
              theme.colorScheme.onSurfaceVariant,
              theme.colorScheme.onErrorContainer,
            ]

            )),
        child: mediumText(
            title: text,
            fontSize: textsize,
            fontWeight: weight,
            color: textcolor));
  }
}
//
// title: 'Get In Touch',
// fontSize: 16.0,
// fontWeight: FontWeight.w400,
// color: theme.colorScheme.inversePrimary));