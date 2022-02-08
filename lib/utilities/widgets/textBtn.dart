import 'package:flutter/material.dart';

class MyTextButton extends StatelessWidget {
  const MyTextButton({
    Key? key,@required this.text,@required this.bgColor,@required this.press, this.textColor
    
  }) : super(key: key);

  final String? text;
  final Color? bgColor,textColor;
  final Function()? press;

  

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.height;
    return InkWell(
      onTap: press,
      child: Container(
          alignment: Alignment.center,
          width: screenWidth,
          height: screenHeight * 0.07,
          child:  Text(
            text!,
            style: TextStyle(
              color: textColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          decoration: BoxDecoration(
            color: bgColor,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
    );
  }
}