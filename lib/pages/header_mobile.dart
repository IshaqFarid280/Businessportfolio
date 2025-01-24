import 'package:falconbytesolutinosportfolio/pages/site_logo.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../controllers/theme_provider.dart';
import '../styles/style.dart';
import '../widgets/custom_sizedBox.dart';
class HeaderMobile extends StatelessWidget {
  const HeaderMobile({super.key, required this.onLogoTap, required this.onMenuTap, required this.istrue});
  final VoidCallback onLogoTap;
  final VoidCallback onMenuTap;
  final bool istrue;
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return
      Container(
        height: 50.0,
        margin: EdgeInsets.fromLTRB(40, 5, 20, 5),
        decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(100),
            gradient: LinearGradient(
                colors: [
                  transparentColor,
                  // image: isinverse == true ?  AssetImage('assets/falconB.png') :
                  //                 AssetImage('assets/removelogo.png'
                  //                 )
                 istrue == true ?   transparentColor : CustomColor.bgLight1
                ]
            )
        ),
        child: Row(
          children: [
            Consumer<ThemeProvider>(
                builder: (context, themeprovider, _) {
                  bool isDarkMode = themeprovider.themeMode == ThemeMode.dark;
                  return SiteLogo(onTap: () {}, isinverse: isDarkMode,);
                }
            ),
            Spacer(),
            Consumer<ThemeProvider>(
                builder: (context, themeprovider, _) {
                  bool isDarkMode = themeprovider.themeMode == ThemeMode.dark;
                return IconButton(onPressed: onMenuTap, icon: Icon(Icons.menu, color: isDarkMode == true ? theme.colorScheme.inversePrimary :  theme.colorScheme.inversePrimary,));
              }
            ),
            Sized(
              width: 0.0001,
            )
          ],
        ),
      );
  }
}
