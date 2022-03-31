import 'package:flutter/material.dart';

class OnBoardingNavBtn extends StatelessWidget {
  const OnBoardingNavBtn({
    Key? key,
    @required this.text,
    this.color,
    this.press,
  }) : super(key: key);

  final String? text;
  final Color? color;
  final Function()? press;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: press,
      child: Text(
        text!,
        style: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
