import 'package:falconbytesolutinosportfolio/constants/colors.dart';
import 'package:falconbytesolutinosportfolio/widgets/text_widgets.dart';
import 'package:flutter/material.dart';

import '../constants/images_path.dart';
import 'custom_sizedBox.dart';
import 'imageasset.dart';


class MyPrjectsWidget extends StatelessWidget {
  const MyPrjectsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        imageAsset(context, appimages, 0.23, 0.62,
            BoxFit.fill, 15),
        Positioned(
          bottom: 0,
          child: Container(
            height:
            MediaQuery.of(context).size.height * 0.3,
            width:
            MediaQuery.of(context).size.width * 0.23,
            decoration: BoxDecoration(
                color: theme.colorScheme.onSecondary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                )),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Sized(
                  height: 0.02,
                ),
                Row(
                  children: [
                    Sized(
                      width: 0.01,
                    ),
                    mediumText(
                        title: 'English Learning App',
                        color: whiteColor,
                        fontSize: 20.0,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                Sized(
                  height: 0.03,
                ),
                Row(
                  children: [
                    Sized(
                      width: 0.01,
                    ),
                    mediumText(
                        fontWeight: FontWeight.w300,
                        fontSize: 11.0,
                        color: whiteColor,
                        title:
                        'This is a comprehensive English Learning \napp for practicing and '
                            'completing\nwith each other.'),
                  ],
                ),
                Spacer(),
                Container(
                  height:
                  MediaQuery.of(context).size.height *
                      0.08,
                  width:
                  MediaQuery.of(context).size.width *
                      0.28,
                  decoration: BoxDecoration(
                    color: theme
                        .colorScheme.inversePrimary
                        .withOpacity(0.25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        smallText(
                          title: 'Available On',
                          color: whiteColor
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.apple,
                              color:whiteColor
                            ),
                            Sized(
                              width: 0.016,
                            ),
                            Icon(
                              Icons.android,
                              color: whiteColor
                            ),
                            Sized(
                              width: 0.016,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class MyPrjectsWidgetMOBILE extends StatelessWidget {
  const MyPrjectsWidgetMOBILE({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Stack(
      children: [
        imageAsset(context, appimages, 0.7, 0.6,
            BoxFit.cover, 15),
        Positioned(
          bottom: 0,
          child: Container(
            height:
            MediaQuery.of(context).size.height * 0.3,
            width:
            MediaQuery.of(context).size.width * 0.7,
            decoration: BoxDecoration(
                color: theme.colorScheme.onSecondary,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(15),
                  topLeft: Radius.circular(15),
                )),
            child: Column(
              crossAxisAlignment:
              CrossAxisAlignment.start,
              children: [
                Sized(
                  height: 0.02,
                ),
                Row(
                  children: [
                    Sized(
                      width: 0.01,
                    ),
                    mediumText(
                        title: 'English Learning App',
                        color: whiteColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400),
                  ],
                ),
                Sized(
                  height: 0.03,
                ),
                Row(
                  children: [
                    Sized(
                      width: 0.01,
                    ),
                    Expanded(
                      child: Text('This is a comprehensive English Learning app for practicing and '
                          'completing with each other.',
                      style: TextStyle(
                          fontFamily: 'ReadexPro',
                          fontSize:  10.0,
                          fontWeight: FontWeight.w300,
                          color: whiteColor,
                          letterSpacing: 1,
                      ),),
                    )
                  ],
                ),
                Spacer(

                ),
                Container(
                  height:
                  MediaQuery.of(context).size.height *
                      0.05,
                  width:
                  MediaQuery.of(context).size.width *
                      0.7,
                  decoration: BoxDecoration(
                    color: theme
                        .colorScheme.inversePrimary
                        .withOpacity(0.25),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 15.0),
                    child: Row(
                      mainAxisAlignment:
                      MainAxisAlignment.spaceBetween,
                      children: [
                        smallText(
                          title: 'Available On',
                          color: whiteColor
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.apple,
                              color:whiteColor
                            ),
                            Sized(
                              width: 0.016,
                            ),
                            Icon(
                              Icons.android,
                              color: whiteColor
                            ),
                            Sized(
                              width: 0.016,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
