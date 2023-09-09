import 'package:flutter/material.dart';
import 'package:login/utils/app_color.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Color fillColor;
  final Color borderColor;
  final TextStyle textStyle;

  const CustomButton({
    super.key,
    required this.text,

    required this.fillColor,
    required this.borderColor,
    required this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 364,
      height: 67,
      decoration: ShapeDecoration(
        color: fillColor,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 1.06, color: borderColor),
          borderRadius: BorderRadius.circular(19),
        ),
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
