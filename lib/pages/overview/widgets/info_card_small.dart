import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class InfoCardSmall extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool isActive;
  final VoidCallback? onTap;

  const InfoCardSmall({
    Key? key,
    this.title,
    this.value,
    this.topColor,
    this.isActive = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.all(24.0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8.0),
            border: Border.all(
              color: isActive ? activeColor : lightGreyColor,
              width: 0.5,
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CustomText(
                text: title,
                size: 24.0,
                weight: FontWeight.w300,
                color: isActive ? activeColor : lightGreyColor,
              ),
              CustomText(
                text: value,
                size: 24.0,
                weight: FontWeight.bold,
                color: isActive ? activeColor : lightGreyColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
