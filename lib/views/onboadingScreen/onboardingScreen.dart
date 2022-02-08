// ignore_for_file: unused_local_variable

import 'package:flutter/material.dart';
import 'package:monumental_habit_app/models/onboardingModel.dart';
import 'package:monumental_habit_app/utilities/colors.dart';
import 'package:monumental_habit_app/utilities/widgets/onboardNavBtn.dart';
import 'package:monumental_habit_app/utilities/widgets/textBtn.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  _OnboardingScreenState createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  int _selectedPageIndex = 0;
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 55),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: PageView.builder(
                  onPageChanged: (val) {
                    setState(() {
                      _selectedPageIndex = val;
                    });
                  },
                  itemCount: onboardingContents.length,
                  itemBuilder: (context, index) {
                    return Column(
                      children: [
                        Text(
                          onboardingContents[index].title,
                          style: const TextStyle(
                            fontFamily: 'Klasik',
                            color: kPrimaryColor,
                            fontSize: 35,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: screenHeight * 0.5,
                          child: Image.asset(
                            onboardingContents[index].image,
                            fit: BoxFit.fill,
                          ),
                        )
                      ],
                    );
                  }),
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              textAlign: TextAlign.center,
              text: const TextSpan(
                text: 'WE CAN ',
                style: TextStyle(
                    fontSize: 18,
                    color: kPrimaryColor,
                    fontWeight: FontWeight.bold),
                children: <TextSpan>[
                  TextSpan(
                    text: 'HELP YOU',
                    style: TextStyle(
                      color: kSecondaryColor,
                    ),
                  ),
                  TextSpan(
                    text: ' TO BE A BETTER ',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: ' VERSION OF',
                    style: TextStyle(),
                  ),
                  TextSpan(
                    text: ' YOURSELF! ',
                    style: TextStyle(
                      color: kSecondaryColor,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            _selectedPageIndex != onboardingContents.length - 1
                ? SizedBox(
                    height: screenHeight * 0.07,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        OnBoardingNavBtn(
                          text: 'skip',
                          press: () {},
                        ),
                        Row(
                          children: [
                            ...List.generate(
                              onboardingContents.length,
                              (index) => Container(
                                margin: const EdgeInsets.only(right: 5),
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: _selectedPageIndex == index
                                      ? kPrimaryColor
                                      : kSecondaryColor,
                                ),
                              ),
                            )
                          ],
                        ),
                        OnBoardingNavBtn(
                          text: 'next',
                          press: () {},
                        ),
                      ],
                    ),
                  )
                : MyTextButton(
                  press: (){},
                  text: 'Get Started',
                  textColor: kPrimaryColor,
                  bgColor: kSecondaryColor,
                ),
          ],
        ),
      )),
    );
  }
}



