// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/widgets/large_screen.dart';

class SiteLayout extends StatelessWidget {
  const SiteLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: LargeScreen(),
    );
  }
}
