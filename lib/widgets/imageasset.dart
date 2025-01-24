import 'package:flutter/material.dart';

Widget imageAsset(
  BuildContext context,
  String image,
  double width,
  double height,
    BoxFit fit,
    double borderradius,
) {
  return Padding(
    padding: const EdgeInsets.only(right: 20.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(borderradius),
      child: Image.asset(
        fit: fit,
        image,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
      ),
    ),
  );
}


Widget imageAssetMOBILE(
  BuildContext context,
  String image,
  double width,
  double height,
    BoxFit fit,
    double borderradius,
    double paddingright,
) {
  return Padding(
    padding:  EdgeInsets.only(right: paddingright),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(borderradius),
      child: Image.asset(
        fit: fit,
        image,
        width: MediaQuery.of(context).size.width * width,
        height: MediaQuery.of(context).size.height * height,
      ),
    ),
  );
}
