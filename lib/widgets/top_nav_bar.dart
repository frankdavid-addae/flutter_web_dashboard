// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:flutter_web_dashboard/widgets/responsive_widget.dart';

AppBar topNavigationBar(BuildContext context, GlobalKey<ScaffoldState> key) =>
    AppBar(
      leading: !ResponsiveWidget.isSmallScreen(context)
          ? Row(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 14.0),
                  child: Image.asset(
                    'assets/icons/logo.png',
                    width: 28.0,
                  ),
                ),
              ],
            )
          : IconButton(
              onPressed: () {
                key.currentState!.openDrawer();
              },
              icon: Icon(Icons.menu),
            ),
      elevation: 0.0,
      title: Row(
        children: [
          Visibility(
            child: CustomText(
              text: 'Dash',
              color: lightGreyColor,
              size: 20.0,
              weight: FontWeight.bold,
            ),
          ),
          Expanded(child: Container()),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.settings,
              color: darkColor.withOpacity(0.7),
            ),
          ),
          Stack(
            children: [
              IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.notifications,
                  color: darkColor.withOpacity(0.7),
                ),
              ),
              Positioned(
                top: 7,
                right: 7,
                child: Container(
                  width: 12,
                  height: 12,
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: activeColor,
                    borderRadius: BorderRadius.circular(30.0),
                    border: Border.all(
                      color: lightColor,
                      width: 2.0,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(width: 10.0),
          Container(
            width: 1.0,
            height: 22.0,
            color: lightGreyColor,
          ),
          SizedBox(width: 20.0),
          CustomText(text: 'David McQarphui', color: lightGreyColor),
          SizedBox(width: 15.0),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30.0),
            ),
            child: Container(
              padding: EdgeInsets.all(2.0),
              margin: EdgeInsets.all(2),
              child: CircleAvatar(
                backgroundColor: lightColor,
                child: Icon(
                  Icons.person_outlined,
                  color: darkColor,
                ),
              ),
            ),
          ),
        ],
      ),
      iconTheme: IconThemeData(color: darkColor),
      backgroundColor: Colors.transparent,
    );
