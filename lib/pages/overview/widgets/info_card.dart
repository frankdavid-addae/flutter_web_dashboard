import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class InfoCard extends StatelessWidget {
  final String? title;
  final String? value;
  final Color? topColor;
  final bool isActive;
  final VoidCallback? onTap;

  const InfoCard({
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
          height: 136.0,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                offset: const Offset(0.0, 6.0),
                color: lightGreyColor.withOpacity(0.1),
                blurRadius: 12.0,
              ),
            ],
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            children: [
              Expanded(
                child: Container(
                  color: topColor ?? activeColor,
                  height: 5.0,
                ),
              ),
              Expanded(
                child: Container(),
              ),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: '$title\n',
                      style: TextStyle(
                        fontSize: 16.0,
                        color: isActive ? activeColor : lightGreyColor,
                      ),
                    ),
                    TextSpan(
                      text: '$value\n',
                      style: TextStyle(
                        fontSize: 40.0,
                        color: isActive ? activeColor : darkColor,
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Container(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
