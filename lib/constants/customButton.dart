import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
      @required this.title,
      this.bgcolor,
      @required this.onPressed,
      this.textColor,
      this.height = 50,
      this.width,
      });

  final String title;
  final Color bgcolor, textColor;
  final Function onPressed;
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child:  Container(
        height: height,
        width: width,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(bgcolor),
          ),
          child: Text(
            this.title,
            style: TextStyle(color: textColor),
          ),
        ),
      ),
    );
  }
}
