// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';

class RevenueInfo extends StatelessWidget {
  final String? title, amount;
  const RevenueInfo({Key? key, this.title, this.amount}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          children: [
            TextSpan(
              text: '$title \n\n',
              style: TextStyle(color: lightGreyColor, fontSize: 16.0),
            ),
            TextSpan(
              text: '\$ $amount',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24.0),
            ),
          ],
        ),
      ),
    );
  }
}
