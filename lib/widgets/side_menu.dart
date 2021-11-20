// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/authentication/authentication.dart';
import 'package:flutter_web_dashboard/routes/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';
import 'package:flutter_web_dashboard/widgets/side_menu_item.dart';
import 'package:get/get.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    return Container(
      color: lightColor,
      child: ListView(
        children: [
          if (ResponsiveWidget.isSmallScreen(context))
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 40.0),
                Row(
                  children: [
                    SizedBox(width: _width / 48.0),
                    Padding(
                      padding: EdgeInsets.only(right: 12.0),
                      child: Image.asset('assets/icons/logo.png'),
                    ),
                    Flexible(
                      child: CustomText(
                        text: 'Dash',
                        size: 20.0,
                        weight: FontWeight.bold,
                        color: activeColor,
                      ),
                    ),
                    SizedBox(width: _width / 48.0),
                  ],
                ),
              ],
            ),
          SizedBox(height: 40.0),
          Divider(color: lightGreyColor.withOpacity(0.1)),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: sideMenuItemRoutes
                .map(
                  (item) => SideMenuItem(
                    itemName: item == 'Authentication' ? 'Sign Out' : item,
                    onTap: () {
                      if (item == AuthenticationPageRoute) {
                        Get.offAll(() => AuthenticationPage());
                      }

                      if (!menuController.isActive(item)) {
                        menuController.changeActiveItem(item);
                        if (ResponsiveWidget.isSmallScreen(context)) {
                          Get.back();
                        }
                        navigationController.navigateTo(item);
                      }
                    },
                  ),
                )
                .toList(),
          ),
        ],
      ),
    );
  }
}
