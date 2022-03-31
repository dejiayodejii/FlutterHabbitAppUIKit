import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:monumental_habit_app/utilities/colors.dart';
import 'package:monumental_habit_app/utilities/widgets/textBtn.dart';
import 'package:monumental_habit_app/views/authenticationScreen.dart/login.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color(0XFFFFF3E9),
      body: Padding(
        padding:
            const EdgeInsets.only(left: 20.0, right: 20, top: 40, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: screenHeight * 0.2,
              child: Image.asset('assets/images/Create Your Account 2 (1).png'),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'CREATE YOUR ACCOUNT',
              style: TextStyle(
                  fontFamily: 'Klasik',
                  fontSize: 20,
                  fontWeight: FontWeight.w500),
            ),
            const SizedBox(
              height: 30,
            ),
            Form(
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                        prefixIconColor: Colors.green,
                        focusColor: Colors.red,
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.contact_mail,
                          size: 18,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        hintText: 'Name',
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    style: const TextStyle(
                      color: Color(0XFFFDA758),
                    ),
                    decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.contact_mail,
                          size: 18,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        hintText: 'Email',
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                 TextFormField(
                   obscureText: true,
                    style: const TextStyle(
                      color: Color(0XFFFDA758),
                    ),
                    decoration: const InputDecoration(
                      
                        filled: true,
                        fillColor: Colors.white,
                        prefixIcon: Icon(
                          Icons.contact_mail,
                          size: 18,
                        ),
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                        hintText: 'Password',
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Checkbox(
                    value: false,
                    onChanged: (value) {
                      value = true;
                    }),
                //const SizedBox(width: 3,),
                const Text(
                  'Keep me signed in',
                  style: TextStyle(
                      color: kPrimaryColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                )
              ],
            ),
            SizedBox(
              height: 22,
              child: Row(
                children: [
                  Checkbox(
                      value: false,
                      onChanged: (value) {
                        value = true;
                      }),
                  //const SizedBox(width: 3,),
                  const Text(
                    'Email me about special pricing and more',
                    style: TextStyle(
                        color: kPrimaryColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 17,
            ),
            MyTextButton(
                text: 'Create Account', bgColor: kSecondaryColor, press: () {}),
            const SizedBox(
              height: 20,
            ),
            Row(
              children: const [
                Expanded(
                    child: Divider(
                  height: 2,
                  color: Colors.grey,
                )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'or sign in with',
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: Divider(
                    height: 2,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Row(
              children: const [
                Expanded(
                  child: TextIconContainer(
                    text: 'Google',
                    imgSrc: 'assets/images/search.png',
                  ),
                ),
                SizedBox(
                  width: 15,
                ),
                Expanded(
                    child: TextIconContainer(
                  text: 'Facebook',
                  imgSrc: 'assets/images/facebook.png',
                )),
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            TextButton(
              onPressed: () {
                Get.to(() => const LoginScreen());
              },
              child: RichText(
                text: const TextSpan(
                  text: 'Already have an account?',
                  style: TextStyle(color: kPrimaryColor, fontSize: 15),
                  children: <TextSpan>[
                    TextSpan(
                        text: ' Sign in',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w600))
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MyTextField extends StatelessWidget {
  const MyTextField({
    Key? key,
    this.filledColor,
    this.icon,
    this.sufffixIcon,
    this.prefixIcon,
    this.hintText,
    this.controller,
  }) : super(key: key);

  final Color? filledColor;
  final IconData? icon;
  final Widget? sufffixIcon, prefixIcon;
  final String? hintText;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      style: const TextStyle(
        color: kSecondaryColor,
      ),
      decoration: InputDecoration(
        filled: true,
        fillColor: filledColor,
        prefixIcon: prefixIcon,
        suffixIcon: sufffixIcon,
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
        hintText: hintText,
        border: InputBorder.none,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        focusedBorder: InputBorder.none,
      ),
    );
  }
}

class TextIconContainer extends StatelessWidget {
  const TextIconContainer({
    Key? key,
    this.imgSrc,
    this.text,
  }) : super(key: key);

  final String? imgSrc, text;

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth,
      height: screenHeight * 0.06,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(12),
            child: Image.asset(imgSrc!),
          ),
          const SizedBox(
            width: 7,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                text!,
                style: const TextStyle(
                  color: kPrimaryColor,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ],
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
      ),
    );
  }
}
