// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/controllers.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HorizontalMenuItem extends StatelessWidget {
  final String? itemName;
  final VoidCallback? onTap;

  const HorizontalMenuItem({Key? key, this.itemName, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
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
                  width: 6.0,
                  height: 40.0,
                  color: darkColor,
                ),
                maintainSize: true,
                maintainState: true,
                maintainAnimation: true,
              ),
              SizedBox(width: _width / 88.0),
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
                        : lightGreyColor,
                  ),
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
      ),
    );
  }
}
