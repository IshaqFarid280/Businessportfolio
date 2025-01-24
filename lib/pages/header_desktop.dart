import 'package:falconbytesolutinosportfolio/controllers/theme_provider.dart';
import 'package:falconbytesolutinosportfolio/pages/site_logo.dart';
import 'package:falconbytesolutinosportfolio/styles/style.dart';
import 'package:falconbytesolutinosportfolio/widgets/custom_sizedBox.dart';
import 'package:falconbytesolutinosportfolio/widgets/gradient_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../widgets/text_widgets.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Container(
      height: MediaQuery.of(context).size.height*0.15,
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 20.0),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100), color: theme.primaryColor),
      child: Row(
        children: [
          Row(
            children: [
              Sized(
                width: 0.03,
              ),
              Consumer<ThemeProvider>(
                builder: (context, themeprovider, _) {
                  bool isDarkMode = themeprovider.themeMode == ThemeMode.dark;
                  return SiteLogo(onTap: () {}, isinverse: isDarkMode);
                }
              ),
            ],
          ),
          Spacer(
            flex: 8,
          ),
          for (int i = 0; i < navTiles.length; i++)
            Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: mediumText(
                title: navTiles[i],
                color:  theme.colorScheme.inversePrimary,
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
              ),
            ),
          Spacer(
            flex: 1,
          ),
          GradientButton(
            text: 'Contact',
            isshadow: true,
            textsize: 16.0,
            textcolor: whiteColor,
            weight: FontWeight.w400,
          ), Sized(
            width: 0.03,
          ),
          Consumer<ThemeProvider>(
            builder: (context, themeprovider, _) {
              bool isDarkMode = themeprovider.themeMode == ThemeMode.dark;
              return FlutterSwitch(
                width: 85.0,
                height: 32.0,
                toggleSize: 26.0,


                activeToggleColor: Color(0xFF6E40C9),
                inactiveToggleColor: Color(0xFF2F363D),
                activeSwitchBorder: Border.all(
                  color: Color(0xFF3C1E70),
                  width: 2.5,
                ),
                inactiveSwitchBorder: Border.all(
                  color: CustomColor.whitePrimary.withOpacity(0.4),
                  width: 2.5,
                ),
                activeColor: Color(0xFF271052),
                inactiveColor: transparentColor,
                activeIcon: Icon(
                  Icons.nightlight_round,
                  color: Color(0xFFF8E3A1),
                ),
                inactiveIcon: Icon(
                  Icons.wb_sunny,
                  color: Color(0xFFFFDF5D),
                ),

                inactiveText: 'Dark',
              activeText: 'Light',
                inactiveTextColor: CustomColor.whitePrimary.withOpacity(0.4),
                value: isDarkMode,
                borderRadius: 20.0,
                padding: 3.0,
                showOnOff: true,
                onToggle: (val) {
                  themeprovider.toggleTheme(val);
                },
              );
            }
          ),
          Spacer(
            flex: 1,
          ),
        ],
      ),
    );
  }
}
