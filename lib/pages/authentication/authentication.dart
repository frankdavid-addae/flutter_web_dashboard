// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_web_dashboard/constants/style.dart';
import 'package:flutter_web_dashboard/routes/routes.dart';
import 'package:flutter_web_dashboard/widgets/custom_text.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class AuthenticationPage extends StatelessWidget {
  const AuthenticationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          constraints: BoxConstraints(maxWidth: 400.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 12.0),
                    child: Image.asset('assets/icons/logo.png'),
                  ),
                  Expanded(child: Container()),
                ],
              ),
              SizedBox(height: 30.0),
              Row(
                children: [
                  Text(
                    'Sign In',
                    style: GoogleFonts.poppins(
                      fontSize: 30.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  CustomText(
                    text: 'Welcome back to the admin panel',
                    color: lightGreyColor,
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              TextField(
                decoration: InputDecoration(
                  // labelText: 'Email Address',
                  hintText: 'john.doe@example.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  // labelText: 'Password',
                  hintText: 'Password',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Checkbox(value: true, onChanged: (value) {}),
                      CustomText(text: 'Remember Me'),
                    ],
                  ),
                  CustomText(
                    text: 'Forgot Password',
                    color: activeColor,
                  ),
                ],
              ),
              SizedBox(height: 15.0),
              InkWell(
                onTap: () {
                  Get.offAllNamed(RootRoute);
                },
                child: Container(
                  alignment: Alignment.center,
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(vertical: 16.0),
                  decoration: BoxDecoration(
                    color: activeColor,
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: CustomText(
                    text: 'Sign In',
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(height: 15.0),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(text: 'Don\'t have admin credentials? '),
                    TextSpan(
                      text: 'Request credentials!',
                      style: TextStyle(color: activeColor),
                    ),
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
