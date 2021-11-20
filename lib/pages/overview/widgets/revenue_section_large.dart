// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/bar_chart.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/revenue_info.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';

class RevenueSectionLarge extends StatelessWidget {
  const RevenueSectionLarge({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24.0),
      margin: EdgeInsets.symmetric(vertical: 30.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8.0),
        boxShadow: [
          BoxShadow(
            offset: Offset(0.0, 6.0),
            color: lightGreyColor.withOpacity(0.1),
            blurRadius: 12.0,
          ),
        ],
        border: Border.all(color: lightGreyColor, width: 3.0),
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomText(
                  text: 'Revenue Chart',
                  size: 20.0,
                  weight: FontWeight.bold,
                  color: lightGreyColor,
                ),
                SizedBox(
                  width: 600.0,
                  height: 200.0,
                  child: SimpleBarChart.withSampleData(),
                ),
              ],
            ),
          ),
          SizedBox(width: 25.0),
          Container(
            width: 1.0,
            height: 120.0,
            color: lightGreyColor,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  children: [
                    RevenueInfo(title: 'Today\'s revenue', amount: '23'),
                    RevenueInfo(title: 'Last 7 days', amount: '150'),
                  ],
                ),
                SizedBox(height: 30.0),
                Row(
                  children: [
                    RevenueInfo(title: 'Last 30 days', amount: '1,203'),
                    RevenueInfo(title: 'Last 12 months', amount: '3,234'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
