import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monumental_habit_app/utilities/colors.dart';
import 'package:monumental_habit_app/views/onboadingScreen/onboardingScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        fontFamily: 'Manrope',
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: kSecondaryColor,
          secondary: kPrimaryColor,
        ),
        textSelectionTheme:
            const TextSelectionThemeData(cursorColor: Colors.black),
        textTheme: const TextTheme(
          bodyText2: TextStyle(color: kPrimaryColor),
        ),
      ),
      home: const OnboardingScreen(),
    );
  }
}
