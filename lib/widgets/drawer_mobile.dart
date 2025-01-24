import 'package:falconbytesolutinosportfolio/constants/images_path.dart';
import 'package:falconbytesolutinosportfolio/widgets/imageasset.dart';
import 'package:falconbytesolutinosportfolio/widgets/text_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:provider/provider.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';
import '../controllers/theme_provider.dart';
import '../pages/site_logo.dart';
import 'custom_sizedBox.dart';

class DrawerMobile extends StatelessWidget {
  const DrawerMobile({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Drawer(
      backgroundColor: theme.primaryColor,
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        children: [

          Stack(

            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Consumer<ThemeProvider>(builder: (context, themeprovider, _) {
                    bool isDarkMode = themeprovider.themeMode == ThemeMode.dark;
                    return SiteLogo(onTap: () {}, isinverse: isDarkMode, width: 0.41, height: 0.2, fit: BoxFit.fill,);
                  }),
                ],
              ),
              Positioned(
                right: 0,
                child: IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    focusColor: transparentColor,
                    hoverColor: transparentColor,

                    splashColor: transparentColor,
                    icon: Icon(
                      Icons.close,
                      color: theme.colorScheme.inversePrimary.withOpacity(0.8),
                    )),
              ),
            ],
          ),

          for (int i = 0; i < navIcons.length; i++)
            ListTile(
              onTap: () {},
              contentPadding: EdgeInsets.symmetric(horizontal: 30.0),
              titleTextStyle: TextStyle(
                  color: CustomColor.whitePrimary,
                  fontWeight: FontWeight.w600,
                  fontSize: 16),
              leading: Icon(
                navIcons[i],
                color: theme.colorScheme.inversePrimary,
              ),
              title: Text(navTiles[i],
                  style: TextStyle(
                    color: theme.colorScheme.inversePrimary,
                  )),
            ),

          Row(
            children: [
              Sized(
                width: 0.16,
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
            ],
          ),
        ],
      ),
    );
  }
}
