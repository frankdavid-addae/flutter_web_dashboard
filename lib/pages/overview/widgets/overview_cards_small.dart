import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/pages/overview/widgets/info_card_small.dart';

class OverviewCardsSmallScreen extends StatelessWidget {
  const OverviewCardsSmallScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;

    return SizedBox(
      height: 400.0,
      child: Column(
        children: [
          InfoCardSmall(
            title: 'Rides in progress',
            value: '7',
            onTap: () {},
            isActive: true,
          ),
          SizedBox(height: _width / 64.0),
          InfoCardSmall(
            title: 'Packages delivered',
            value: '17',
            onTap: () {},
          ),
          SizedBox(height: _width / 64.0),
          InfoCardSmall(
            title: 'Cancelled deliveries',
            value: '3',
            onTap: () {},
          ),
          SizedBox(height: _width / 64.0),
          InfoCardSmall(
            title: 'Scheduled deliveries',
            value: '3',
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
