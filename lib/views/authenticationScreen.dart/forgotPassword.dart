// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monumental_habit_app/utilities/colors.dart';
import 'package:monumental_habit_app/utilities/widgets/textBtn.dart';
import 'package:monumental_habit_app/views/authenticationScreen.dart/signup.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0XFFFFF3E9),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 80,
        leading: Padding(
          padding: const EdgeInsets.symmetric(vertical: 5),
          child: CircleAvatar(
            backgroundColor: kPrimaryColor.withOpacity(0.1),
            child: IconButton(
              icon: const Icon(
                Icons.arrow_back,
                color: kPrimaryColor,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Flexible(flex: 1, child: Container()),
              const Text(
                'FORGOT YOUR PASSWORD',
                style: TextStyle(
                    fontFamily: 'Klasik',
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                height: 20,
              ),
              SizedBox(
                height: screenHeight * 0.25,
                child: Image.asset('assets/images/password.png'),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                height: screenHeight * 0.30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    const Text(
                      'Enter your registered email below to receive password reset instruction',
                      style: TextStyle(                         
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    MyTextField(
                      filledColor: kSecondaryColor.withOpacity(0.3),
                      hintText: 'Enter your email',
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    MyTextButton(
                      text: 'Send Reset link',
                      bgColor: kSecondaryColor,
                      press: () {},
                    ),
                  ],
                ),
              ),
              Flexible(flex: 2, child: Container()),
              RichText(
                text: const TextSpan(
                  text: 'Remember Password?',
                  style: TextStyle( color: kPrimaryColor, fontSize: 15,fontWeight: FontWeight.w400),
                  children: <TextSpan>[
                    TextSpan(
                      text: ' Login',
                      style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
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
