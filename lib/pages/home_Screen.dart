

import 'package:falconbytesolutinosportfolio/constants/colors.dart';
import 'package:falconbytesolutinosportfolio/constants/list.dart';
import 'package:falconbytesolutinosportfolio/constants/nav_items.dart';
import 'package:falconbytesolutinosportfolio/constants/size.dart';
import 'package:falconbytesolutinosportfolio/controllers/theme_provider.dart';
import 'package:falconbytesolutinosportfolio/pages/header_desktop.dart';
import 'package:falconbytesolutinosportfolio/pages/site_logo.dart';
import 'package:falconbytesolutinosportfolio/styles/style.dart';
import 'package:falconbytesolutinosportfolio/widgets/custom_button.dart';
import 'package:falconbytesolutinosportfolio/widgets/custom_sizedBox.dart';
import 'package:falconbytesolutinosportfolio/widgets/drawer_mobile.dart';
import 'package:falconbytesolutinosportfolio/widgets/gradient_button.dart';
import 'package:falconbytesolutinosportfolio/widgets/gradient_line.dart';
import 'package:falconbytesolutinosportfolio/widgets/imageasset.dart';
import 'package:falconbytesolutinosportfolio/widgets/my_prjects_widget.dart';
import 'package:falconbytesolutinosportfolio/widgets/navigation.dart';
import 'package:falconbytesolutinosportfolio/widgets/text_widgets.dart';
import 'package:falconbytesolutinosportfolio/widgets/whaticandocontianer.dart';
import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:provider/provider.dart';
import 'dart:math' as math;

import '../constants/images_path.dart';
import 'header_mobile.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final scaffoldkey = GlobalKey<ScaffoldState>();
  int currentindex = 0;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    final int itemCount = 6;
    var namecontroller = TextEditingController();
    var emailcontroller = TextEditingController();
    var messagecontroller = TextEditingController();

    final CarouselController carouselcontrolller = CarouselController();
    return LayoutBuilder(builder: (context, constraints) {
      return SafeArea(
        child: Scaffold(
            key: scaffoldkey,
            backgroundColor: theme.primaryColor,

            endDrawer: constraints.maxWidth >= kMinDesktopWidth
                ? null
                : DrawerMobile(),
            body: ListView(
              scrollDirection: Axis.vertical,
              children: [
                Stack(
                  children: [
                    if (constraints.maxWidth >= kMinDesktopWidth)
                      //web version
                      Positioned(
                          top: 100,
                          child: imageAsset(
                              context, leftrock, 0.2, 0.45, BoxFit.cover, 0))
                    else
                      //mobile version
                      Positioned(
                          top: 50,
                          child: imageAsset(
                              context, leftrock, 0.08, 0.15, BoxFit.cover, 0)),
                    Column(
                      children: [
                        //Main
                        if (constraints.maxWidth >= kMinDesktopWidth)
                          //web version
                          const HeaderDesktop()
                        else
                          //mobile version
                         Consumer<ThemeProvider>(
                                        builder: (context, themeprovider, _) {
                                          bool isDarkMode = themeprovider.themeMode == ThemeMode.dark;
                                          return  HeaderMobile(

                                              istrue : isDarkMode,
                                            onLogoTap: () {},
                                            onMenuTap: () {
                                              scaffoldkey.currentState?.openEndDrawer();
                                            },
                                          );
                                        }
                                      ),

                        //Skills
                        // SvgPicture.asset('assets/RockB.svg'),

                        if (constraints.maxWidth >= kMinDesktopWidth)
                          //web version
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 100.0, vertical: 30),
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.65,
                              width: MediaQuery.of(context).size.width*0.85,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(4),
                                  border: GradientBoxBorder(
                                      gradient: LinearGradient(colors: [
                                    theme.colorScheme.onPrimaryContainer,
                                    theme.colorScheme.onPrimaryFixedVariant
                                        .withOpacity(0),
                                  ])),
                                  gradient: LinearGradient(colors: [
                                    theme.colorScheme.onPrimaryFixed
                                        .withOpacity(0.56),
                                    theme.colorScheme.onInverseSurface
                                        .withOpacity(0.49),
                                  ])),
                              child: Row(children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Sized(
                                      height: 0.099,
                                    ),
                                    // Row(
                                    //   children: [
                                    //     Sized(
                                    //       height: 0.036,
                                    //     ),
                                    //     mediumText(
                                    //         title: 'Hello, I\'m ',
                                    //         color: theme
                                    //             .colorScheme.inversePrimary),
                                    //   ],
                                    // ),
                                    Sized(
                                      height: 0.05,
                                    ),
                                    Row(
                                      children: [
                                        Sized(
                                          height: 0.036,
                                        ),
                                        mediumText(
                                            title: 'Falconbyte Solutions',
                                            fontSize: 44,
                                            color: theme
                                                .colorScheme.inversePrimary
                                                .withOpacity(0.9)),
                                      ],
                                    ),
                                    Sized(
                                      height: 0.005,
                                    ),
                                    Row(
                                      children: [
                                        Sized(
                                          height: 0.016,
                                        ),
                                        mediumText(
                                            title: 'Build Better',
                                            fontSize: 22.0,
                                            fontWeight: FontWeight.w300,
                                            color: theme
                                                .colorScheme.onSurfaceVariant),
                                      ],
                                    ),
                                    Sized(
                                      height: 0.1,
                                    ),
                                    Row(
                                      children: [
                                        Sized(
                                          height: 0.016,
                                        ),
                                        GradientButton(
                                          text: 'Get in Touch',
                                          textsize: 16.0,
                                          textcolor: whiteColor,
                                          weight: FontWeight.w400,
                                          isshadow: true,
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                Sized(width: 0.0571,),
                                Column(
                                  children: [
                                    Sized(
                                      height: 0.025,
                                    ),
                                    Image.asset(
                                      'assets/images/hero section vector.png',
                                      width: MediaQuery.of(context).size.width *
                                          0.4,
                                      height:
                                          MediaQuery.of(context).size.height *
                                              0.6,
                                    ),
                                  ],

                                  //
                                ),
                              ]),
                            ),
                          )
                        else
                          //mobile version
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 0.0, vertical: 30),
                            child: Container(
                              height: MediaQuery.of(context).size.height*0.28,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                // border: GradientBoxBorder(
                                //     gradient: LinearGradient(colors: [
                                //   theme.colorScheme.onPrimaryContainer,
                                //   theme.colorScheme.onPrimaryFixedVariant
                                //       .withOpacity(0),
                                // ])),

                                //                           gradient: LinearGradient(colors: [
                                // theme.colorScheme.onPrimaryFixed
                                //     .withOpacity(0.56),
                                // theme.colorScheme.onInverseSurface
                                //     .withOpacity(0.49),
                                // ])
                              ),
                              child: Stack(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(right: 12.0),
                                    child: Transform.scale(
                                      scaleX: -1,
                                      child: Opacity(
                                          opacity: 0.5,
                                          child: imageAsset(
                                              context,
                                              mobilebackgrundofmainbody,
                                              1,
                                              0.34,
                                              BoxFit.fill,
                                              12.0)),
                                    ),
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      // Sized(
                                      //   height: 0.009,
                                      // ),
                                      // Row(
                                      //   mainAxisAlignment:
                                      //       MainAxisAlignment.center,
                                      //   children: [
                                      //     mediumText(
                                      //         title: 'Hello, I\'m ',
                                      //         color: theme
                                      //             .colorScheme.inversePrimary,
                                      //         fontSize: 12.0),
                                      //   ],
                                      // ),
                                      Sized(
                                        height: 0.058,
                                      ),
                                      Row(
                                        children: [
                                          Sized(
                                            width: 0.096,
                                          ),
                                          mediumText(
                                              title: 'FalconByte Solutions',
                                              fontSize: 20,
                                              color: theme
                                                  .colorScheme.inversePrimary
                                                  .withOpacity(0.9)),
                                        ],
                                      ),
                                      Sized(
                                        height: 0.005,
                                      ),
                                      Row(
                                        children: [
                                          Sized(
                                            width: 0.096,
                                          ),
                                          mediumText(
                                              title: 'Build Better',
                                              fontSize: 12.0,
                                              fontWeight: FontWeight.w300,
                                              color: theme.colorScheme
                                                  .onSurfaceVariant),
                                        ],
                                      ),
                                      Sized(
                                        height: 0.081,
                                      ),
                                      Row(
                                        children: [
                                          Sized(
                                            width: 0.096,
                                          ),
                                          GradientButton(
                                            text: 'Get in Touch',
                                            horizontalpadding: 8.0,
                                            verticalpadding: 8,
                                            textsize: 12.0,
                                            textcolor: whiteColor,
                                            weight: FontWeight.w400,
                                            isshadow: true,
                                          )
                                        ],
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          )
                      ],
                    ),
                  ],
                ),


                //Skills
                if (constraints.maxWidth >= kMinDesktopWidth)
                  //web version
                  Column(
                    children: [
                      Sized(
                        height: 0.2,
                      ),

                      //About Me section
                      Stack(
                        children: [
                          Positioned(
                              top: 100,
                              right: 0,
                              child: imageAsset(context, rightrock, 0.2, 0.45,
                                  BoxFit.cover, 0)),
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 120.0),
                            child: Container(
                              height: 512,
                              width: double.maxFinite,
                              decoration: BoxDecoration(),
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      gradientLine(
                                          context,
                                          theme
                                              .colorScheme.onSecondaryContainer,
                                          0.322),
                                      largeText(
                                          title: '"About Us"',
                                          color:
                                              theme.colorScheme.inversePrimary,
                                          fontWeight: FontWeight.w500),
                                      gradientLine(
                                          context,
                                          theme
                                              .colorScheme.onSecondaryContainer,
                                          0.322),
                                    ],
                                  ),
                                  Sized(
                                    height: 0.06,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        mediumText(
                                            title:
                                                'I\'m a skilled Flutter developer with a passion for creating'
                                                ' innovative mobile apps',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'My expertise lies in designing user-friendly interfaces and writing efficient code.',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'I stay updated on industry trends and excel at problem-solving, ensuring top-notch applications that impress users.',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'Currently at the helm of the mobile developer team at “WarshaTec Company',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'I\'m dedicated to sculpting innovative, user-centric solutions that breathe life into every pixel.',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title: '"Personality"',
                                            fontSize: 24.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w500),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'I\’m a social person who likes to work with a team and be collaborative.',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'I like to deal with honesty and transparency in order to gain the people around me.',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'I am passionate about my work and love creativity and constant learning,',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                        Sized(
                                          height: 0.025,
                                        ),
                                        mediumText(
                                            title:
                                                'you can tell when you get to know me',
                                            fontSize: 20.0,
                                            color: theme
                                                .colorScheme.inversePrimary,
                                            fontWeight: FontWeight.w300),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                else
                  Stack(
                    children: [
                      Positioned(
                          top: 100,
                          right: -20,
                          child: Opacity(
                            opacity: 0.8,
                            child: imageAsset(
                                context, rightrock, 0.08, 0.1, BoxFit.cover, 0),
                          )),
                      Positioned(
                          top: 160,
                          left: 40,
                          child: imageAsset(
                              context, rockimage3, 0.39, 0.18, BoxFit.fill, 0)),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 15.0),
                        child: Container(
                          height: MediaQuery.of(context).size.height*0.6,
                          width: double.maxFinite,
                          decoration: BoxDecoration(),
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  gradientLine(
                                      context,
                                      theme.colorScheme.onSecondaryContainer,
                                      0.25),
                                  largeText(
                                      title: '" About Me "',
                                      fontSize: 14.0,
                                      color: theme.colorScheme.inversePrimary,
                                      fontWeight: FontWeight.w500),
                                  gradientLine(
                                      context,
                                      theme.colorScheme.onSecondaryContainer,
                                      0.25),
                                ],
                              ),
                              Sized(
                                height: 0.02,
                              ),
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    mediumText(
                                        title:
                                            'I\'m a skilled Flutter developer with a passion for creating'
                                            ' innovative mobile apps',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'My expertise lies in designing user-friendly interfaces and writing efficient code.',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'I stay updated on industry trends and excel at problem-solving, ensuring top-notch applications that impress users.',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'Currently at the helm of the mobile developer team at “WarshaTec Company',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'I\'m dedicated to sculpting innovative, user-centric solutions that breathe life into every pixel.',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title: '"Personality"',
                                        fontSize: 14.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w500),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'I\’m a social person who likes to work with a team and be collaborative.',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'I like to deal with honesty and transparency in order to gain the people around me.',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'I am passionate about my work and love creativity and constant learning,',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                    Sized(
                                      height: 0.0125,
                                    ),
                                    mediumText(
                                        title:
                                            'you can tell when you get to know me',
                                        fontSize: 12.0,
                                        color: theme.colorScheme.inversePrimary,
                                        fontWeight: FontWeight.w300),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  //web version
                  //What I Can Do section
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 120.0, right: 120, top: 140, bottom: 70),
                        child: Container(
                          height: 712,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  gradientLine(
                                      context,
                                      theme.colorScheme.onSecondaryContainer,
                                      0.28),
                                  largeText(
                                      title: '“ What I Can Do ? ”',
                                      color: theme.colorScheme.inversePrimary,
                                      fontWeight: FontWeight.w500),
                                  gradientLine(
                                      context,
                                      theme.colorScheme.onSecondaryContainer,
                                      0.28),
                                ],
                              ),
                              Sized(
                                height: 0.096,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Whaticandocontianer(
                                      text: 'Web Development', image: laptop2),
                                  Whaticandocontianer(
                                      text: 'IOS Development', image: ios),
                                ],
                              ),
                              Sized(
                                height: 0.08,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Whaticandocontianer(
                                      text: 'Android Development',
                                      image: android),
                                  Whaticandocontianer(
                                      text: 'Graphic Design', image: android2),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 720,
                          right: 0,
                          child: imageAsset(
                              context, sphere, 0.15, 0.35, BoxFit.cover, 0)),
                    ],
                  )
                else
                  //mobile version
                  Stack(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 20.0, right: 20, top: 40, bottom: 0),
                        child: Container(

                          height: MediaQuery.of(context).size.height*0.5,
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  gradientLine(
                                      context,
                                      theme.colorScheme.onSecondaryContainer,
                                      0.22),
                                  largeText(
                                      title: '“What I Can Do ?”',
                                      fontSize: 14.0,
                                      color: theme.colorScheme.inversePrimary,
                                      fontWeight: FontWeight.w500),
                                  gradientLine(
                                      context,
                                      theme.colorScheme.onSecondaryContainer,
                                      0.22),
                                ],
                              ),
                              Sized(
                                height: 0.026,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  WhaticandocontianerMOBILE(
                                      text: 'Web Development', image: laptop2),
                                  WhaticandocontianerMOBILE(
                                      text: 'IOS Development', image: ios),
                                ],
                              ),
                              Sized(
                                height: 0.014,
                              ),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  WhaticandocontianerMOBILE(
                                      text: 'Android Development',
                                      image: android),
                                  WhaticandocontianerMOBILE(
                                      text: 'Graphic Design', image: android2),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          top: 340,
                          left: -20,
                          child: Transform.scale(
                            scaleX: -1.0,
                            child: Opacity(
                              opacity: 0.4,
                              child: imageAsset(
                                  context, sphere, 0.19, 0.16, BoxFit.cover, 0),
                            ),
                          )),
                    ],
                  ),
                if (constraints.maxWidth >= kMinDesktopWidth)
                  //web version
                  //My projects section
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 120.0, right: 120, top: 140),
                    child: Container(
                      height: 512,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              gradientLine(context,
                                  theme.colorScheme.onSecondaryContainer, 0.31),
                              largeText(
                                  title: '“My Projects”',
                                  color: theme.colorScheme.inversePrimary,
                                  fontWeight: FontWeight.w500),
                              gradientLine(context,
                                  theme.colorScheme.onSecondaryContainer, 0.31),
                            ],
                          ),
                          Sized(
                            height: 0.096,
                          ),
                          // CarouselView(itemExtent: 100, children: List.generate(6, (int index){
                          //  return MyPrjectsWidget();
                          //
                          // }
                          // ))
                          Padding(
                            padding: const EdgeInsets.only(right: 30.0),
                            child: SingleChildScrollView(
                              physics: BouncingScrollPhysics(),
                              scrollDirection: Axis.horizontal,
                              child: Row(
                                  children: List.generate(
                                6,
                                (index) {
                                  return Padding(
                                    padding: const EdgeInsets.only(left: 30.0),
                                    child: MyPrjectsWidget(),
                                  );
                                },
                              )),
                            ),
                          ),
                        ],
                      ),
                    ),
                  )
                else

                  //mobile  version
                  //My projects section
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 10.0, right: 10, top: 10),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.67,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              gradientLine(context,
                                  theme.colorScheme.onSecondaryContainer, 0.25),
                              largeText(
                                  title: '“ My Projects ”',
                                  fontSize: 14.0,
                                  color: theme.colorScheme.inversePrimary,
                                  fontWeight: FontWeight.w500),
                              gradientLine(context,
                                  theme.colorScheme.onSecondaryContainer, 0.25),
                            ],
                          ),
                          Sized(
                            height: 0.026,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [

                              InkWell(

                                child: Container(

                                    decoration: BoxDecoration(
                                        // borderRadius: BorderRadius.circular(8),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color:theme.colorScheme.onError,
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 8, // Blur radius
                                            offset: Offset(1, 1), // Shadow position: (x, y)

                                          )
                                        ],
                                        gradient: LinearGradient(colors: [
                                          theme.colorScheme.onSurfaceVariant,
                                          theme.colorScheme.onErrorContainer,
                                        ]

                                        )),
                                    padding: EdgeInsets.only(left: 10, top: 4, bottom: 4, ),
                                    child: Icon(Icons.arrow_back_ios, color: whiteColor,)),

                                splashColor: transparentColor,
                                onTap: (){
                                  setState(() {
                                    currentindex = (currentindex - 1) % itemCount;
                                    carouselcontrolller.jumpTo(currentindex.toDouble());
                                    print(currentindex);
                                  });
                                },
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.7,
                                height:
                                    MediaQuery.of(context).size.height * 0.6,
                                child: CarouselView(
                                  controller: carouselcontrolller,
                                    itemSnapping: true,
                                    elevation: 5.0,
                                    reverse: true,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(12.0),
                                    ),
                                    scrollDirection: Axis.horizontal,
                                    itemExtent: 250,
                                    children: List.generate(
                                      6,
                                      (index) {
                                        return MyPrjectsWidgetMOBILE();
                                      },
                                    )),
                              ),
                              InkWell(
                                child: Container(

                                    decoration: BoxDecoration(
                                      // borderRadius: BorderRadius.circular(8),
                                        shape: BoxShape.circle,
                                        boxShadow: [
                                          BoxShadow(
                                            color:theme.colorScheme.onError,
                                            spreadRadius: 2, // Spread radius
                                            blurRadius: 8, // Blur radius
                                            offset: Offset(1, 1), // Shadow position: (x, y)

                                          )
                                        ],
                                        gradient: LinearGradient(colors: [
                                          theme.colorScheme.onSurfaceVariant,
                                          theme.colorScheme.onErrorContainer,
                                        ]

                                        )),
                                    padding: EdgeInsets.only(left: 6, right: 4, top: 4, bottom: 4, ),
                                    child: Icon(Icons.arrow_forward_ios, color: whiteColor,)),

                                splashColor: transparentColor,
                                onTap: (){
                                  setState(() {
                                    currentindex = (currentindex + 1) % itemCount;
                                    carouselcontrolller.jumpTo(currentindex.toDouble());
                                    print(currentindex);
                                  });
                                },
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),

                if (constraints.maxWidth >= kMinDesktopWidth)
                  //web version
                  //CONTACT section
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 120.0, right: 120, top: 230, bottom: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.92,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              gradientLine(
                                  context,
                                  theme.colorScheme.onSecondaryContainer,
                                  0.333),
                              largeText(
                                  title: '“Contact”',
                                  color: theme.colorScheme.inversePrimary,
                                  fontWeight: FontWeight.w500),
                              gradientLine(
                                  context,
                                  theme.colorScheme.onSecondaryContainer,
                                  0.333),
                            ],
                          ),
                          Sized(
                            height: 0.096,
                          ),
                          Consumer<ThemeProvider>(
                              builder: (context, themeprovider, _) {
                            return Container(
                              height: 412,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: GradientBoxBorder(
                                    width: 2.0,
                                    gradient: LinearGradient(colors: [
                                      theme.colorScheme.onSurface,
                                      theme.colorScheme.onBackground,
                                    ])),
                                gradient: LinearGradient(colors: [
                                  theme.colorScheme.onTertiaryContainer
                                      .withOpacity(1),
                                  theme.colorScheme.onTertiaryFixed
                                      .withOpacity(1)
                                ]),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Sized(
                                    height: 0.04,
                                  ),
                                  Row(
                                    children: [
                                      Sized(
                                        width: 0.02,
                                      ),
                                      gradienttextfield(
                                          0.08,
                                          0.25,
                                          context,
                                          'Enter name',
                                          namecontroller,
                                          theme.colorScheme.onTertiary,
                                          theme.colorScheme.onSecondaryFixed,
                                          theme.colorScheme
                                              .onTertiaryFixedVariant,
                                          1),
                                      Sized(
                                        width: 0.03,
                                      ),
                                      gradienttextfield(
                                          0.08,
                                          0.25,
                                          context,
                                          'Enter Email',
                                          emailcontroller,
                                          theme.colorScheme.onTertiary,
                                          theme.colorScheme.onSecondaryFixed,
                                          theme.colorScheme
                                              .onTertiaryFixedVariant,
                                          1),
                                    ],
                                  ),
                                  Sized(
                                    height: 0.04,
                                  ),
                                  Row(
                                    children: [
                                      Sized(
                                        width: 0.02,
                                      ),
                                      gradienttextfield(
                                          0.35,
                                          0.5,
                                          context,
                                          'Enter Message',
                                          messagecontroller,
                                          theme.colorScheme.onTertiary,
                                          theme.colorScheme.onSecondaryFixed,
                                          theme.colorScheme
                                              .onTertiaryFixedVariant,
                                          12),
                                    ],
                                  ),
                                  Sized(
                                    height: 0.04,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Sized(
                                            width: 0.02,
                                          ),
                                          CustomButton(
                                              fontWeight: FontWeight.w500,
                                              color: theme.colorScheme.outline,
                                              width: 0.117,
                                              height: 0.07,
                                              title: 'Send',
                                              onTap: () {
                                                // navigation(context, screens)
                                              }),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 45.0),
                                        child: Row(
                                            children: List.generate(
                                                sociallinks.length,
                                                (int index) {
                                          return imageAsset(
                                              context,
                                              sociallinks[index].toString(),
                                              0.025,
                                              0.0489,
                                              BoxFit.cover,
                                              1.2);
                                        })),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                          Sized(
                            height: 0.016,
                          ),
                          mediumText(
                              title: 'Made in ❤ with Flutter by @ishaq farid',
                              fontSize: 11.0,
                              color: theme.colorScheme.inversePrimary
                                  .withOpacity(0.7)),
                          Sized(
                            height: 0.016,
                          ),
                        ],
                      ),
                    ),
                  )
                else

                  //CONTACT section
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20, top: 40, bottom: 20),
                    child: Container(
                      height: MediaQuery.of(context).size.height*0.55,
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              gradientLine(
                                  context,
                                  theme.colorScheme.onSecondaryContainer,
                                  0.266),
                              largeText(
                                  title: '“ Contact ”',
                                  fontSize: 16.0,
                                  color: theme.colorScheme.inversePrimary,
                                  fontWeight: FontWeight.w500),
                              gradientLine(
                                  context,
                                  theme.colorScheme.onSecondaryContainer,
                                  0.266),
                            ],
                          ),
                          Sized(
                            height: 0.026,
                          ),
                          Consumer<ThemeProvider>(
                              builder: (context, themeprovider, _) {
                            return Container(
                              height: MediaQuery.of(context).size.height*0.44,
                              width: double.maxFinite,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12.0),
                                border: GradientBoxBorder(
                                    width: 2.0,
                                    gradient: LinearGradient(colors: [
                                      theme.colorScheme.onSurface,
                                      theme.colorScheme.onBackground,
                                    ])),
                                gradient: LinearGradient(colors: [
                                  theme.colorScheme.onTertiaryContainer
                                      .withOpacity(1),
                                  theme.colorScheme.onTertiaryFixed
                                      .withOpacity(0.69)
                                ]),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Sized(
                                    height: 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Sized(
                                        width: 0.03,
                                      ),
                                      gradienttextfield(
                                          0.06,
                                          0.8,
                                          context,
                                          'Enter name',
                                          namecontroller,
                                          theme.colorScheme.onTertiary,
                                          theme.colorScheme.onSecondaryFixed,
                                          theme.colorScheme
                                              .onTertiaryFixedVariant,
                                          1),
                                    ],
                                  ),
                                  Sized(
                                    height: 0.01,
                                  ),
                                  Row(
                                    children: [
                                      Sized(
                                        width: 0.03,
                                      ),
                                      gradienttextfield(
                                          0.06,
                                          0.8,
                                          context,
                                          'Enter Email',
                                          emailcontroller,
                                          theme.colorScheme.onTertiary,
                                          theme.colorScheme.onSecondaryFixed,
                                          theme.colorScheme
                                              .onTertiaryFixedVariant,
                                          1),
                                    ],
                                  ),
                                  Sized(
                                    height: 0.015,
                                  ),
                                  Row(
                                    children: [
                                      Sized(
                                        width: 0.03,
                                      ),
                                      gradienttextfield(
                                          0.18,
                                          0.8,
                                          context,
                                          'Enter Message',
                                          messagecontroller,
                                          theme.colorScheme.onTertiary,
                                          theme.colorScheme.onSecondaryFixed,
                                          theme.colorScheme
                                              .onTertiaryFixedVariant,
                                          12),
                                    ],
                                  ),
                                  Sized(
                                    height: 0.01,
                                  ),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Row(
                                        children: [
                                          Sized(
                                            width: 0.03,
                                          ),
                                          CustomButton(
                                              fontWeight: FontWeight.w500,
                                              color: theme.colorScheme.outline,
                                              width: 0.27,
                                              height: 0.05,
                                              title: 'Send',
                                              onTap: () {
                                                // navigation(context, screens)
                                              }),
                                        ],
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(right: 12.0),
                                        child: Row(
                                            children: List.generate(
                                                sociallinks.length,
                                                (int index) {
                                          return imageAssetMOBILE(
                                              context,
                                              sociallinks[index].toString(),
                                              0.07,
                                              0.033,
                                              BoxFit.fill,
                                              1.2,
                                              2.0);
                                        })),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            );
                          }),
                          Sized(
                            height: 0.016,
                          ),
                          mediumText(
                              title: 'Made in ❤ with Flutter by @ishaq farid',
                              fontSize: 11.0,
                              color: theme.colorScheme.inversePrimary
                                  .withOpacity(0.7)),
                          Sized(
                            height: 0.016,
                          ),
                        ],
                      ),
                    ),
                  ),

                //Skills
              ],
            )),
      );
    });
  }
}
