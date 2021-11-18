// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';

class VerticalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;
  const VerticalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      onHover: (value) {
        value
            ? menuController.onHover(itemName!)
            : menuController.onHover('Not hovering');
      },
      child: Obx(
        () => Container(
          color: menuController.isHovered(itemName!)
              ? lightGreyColor.withOpacity(0.1)
              : Colors.transparent,
          child: Row(
            children: [
              Visibility(
                visible: menuController.isHovered(itemName!) ||
                    menuController.isActive(itemName!),
                child: Container(
                  width: 3.0,
                  height: 72.0,
                  color: darkColor,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(16.0),
                      child: menuController.returnIcon(itemName!),
                    ),
                    if (!menuController.isActive(itemName!))
                      Flexible(
                        child: CustomText(
                            text: itemName,
                            color: menuController.isHovered(itemName!)
                                ? darkColor
                                : lightGreyColor),
                      )
                    else
                      Flexible(
                        child: CustomText(
                          text: itemName,
                          color: darkColor,
                          size: 18.0,
                          weight: FontWeight.bold,
                        ),
                      )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
