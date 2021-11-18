import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routes/routes.dart';
import 'package:get/get.dart';

class MenuController extends GetxController {
  static MenuController instance = Get.find();
  var activeItem = OverviewPageRoute.obs;
  var hoveredItem = ''.obs;

  changeActiveItem(String item) {
    activeItem.value = item;
  }

  onHover(String item) {
    if (!isActive(item)) hoveredItem.value = item;
  }

  isActive(String item) => activeItem.value == item;

  isHovered(String item) => hoveredItem.value == item;

  Widget returnIcon(String item) {
    switch (item) {
      case OverviewPageRoute:
        return _customIcon(Icons.trending_up, item);
      case DriversPageRoute:
        return _customIcon(Icons.drive_eta, item);
      case ClientsPageRoute:
        return _customIcon(Icons.people_alt_outlined, item);
      case AuthenticationPageRoute:
        return _customIcon(Icons.exit_to_app, item);
      default:
        return _customIcon(Icons.exit_to_app, item);
    }
  }

  Widget _customIcon(IconData icon, String item) {
    if (isActive(item)) return Icon(icon, size: 22.0, color: darkColor);

    return Icon(icon, color: isHovered(item) ? darkColor : lightGreyColor);
  }
}
