import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String labelText;
  final String hintText;
  final TextInputType inputType;
  final IconData? icon;

  const CustomTextField({
    super.key,
    required this.labelText,
    required this.hintText,
    required this.inputType,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        keyboardType: inputType,
        decoration: InputDecoration(
          labelText: labelText,
          hintText: hintText,
          suffixIcon: Icon(icon),
        ),
      ),
    );
  }
}
