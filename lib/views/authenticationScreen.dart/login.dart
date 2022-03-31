import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monumental_habit_app/utilities/colors.dart';
import 'package:monumental_habit_app/utilities/widgets/textBtn.dart';
import 'package:monumental_habit_app/views/authenticationScreen.dart/forgotPassword.dart';
import 'package:monumental_habit_app/views/authenticationScreen.dart/signup.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
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
      backgroundColor: const Color(0XFFFFF3E9),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Flexible(child: Container()),
            const SizedBox(
              width: 300,
              child: Text(
                'Welcome To Monumental Habits',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Klasik',
                  color: kPrimaryColor,
                  fontSize: 27,
                ),
              ),
            ),
            const SizedBox(
              height: 60,
            ),
            const Padding(
              padding:  EdgeInsets.symmetric(horizontal: 20.0),
              child: TextIconContainer(
                  text: 'Continue with Google',
                  imgSrc: 'assets/images/search.png',
                )
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0),
              child: TextIconContainer(
                  text: 'Continue with Facebook',
                  imgSrc: 'assets/images/facebook.png',
                )
            ),
           Flexible(child: Container()),
            Container(
              padding: const EdgeInsets.only(
                  top: 18, bottom: 20, left: 20, right: 20),
              width: screenWidth,
              height: screenHeight * 0.44,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                children: [
                  const Text(
                    'Login with email',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      focusColor: Colors.red,
                      filled: true,
                      fillColor: kSecondaryColor.withOpacity(0.3),
                      prefixIcon: const Icon(
                        Icons.mail,
                        size: 18,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      hintText: 'Email',
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0XFFFDA758),
                    ),
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: kSecondaryColor.withOpacity(0.3),
                      prefixIcon: const Icon(
                        Icons.contact_mail,
                        size: 18,
                      ),
                      suffixIcon: const Icon(
                        Icons.visibility_off,
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 15, vertical: 15),
                      hintText: 'Password',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                          borderSide: BorderSide.none),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  MyTextButton(
                      text: 'Login', bgColor: kSecondaryColor, press: () {}),
                  const SizedBox(
                    height: 15,
                  ),
                  InkWell(
                      onTap: () {
                        Get.to(() => const ForgotPasswordScreen());
                      }, child: const Text('Forgot Password?')),
                  SizedBox(
                    height: 35,
                    child: TextButton(
                      onPressed: () {
                        Get.to(() => const LoginScreen());
                      },
                      child: RichText(
                        text: const TextSpan(
                          text: 'Don\'t have an account?',
                          style:
                              TextStyle(color: kPrimaryColor, fontSize: 15),
                          children: <TextSpan>[
                            TextSpan(
                                text: ' Sign in',
                                style: TextStyle(
                                    color: kPrimaryColor,
                                    fontSize: 15,
                                    fontWeight: FontWeight.w600))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
