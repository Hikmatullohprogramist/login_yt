import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "FLUTTER ASMR",
          style: TextStyle(color: Colors.black, fontSize: 42),
        ),
      ),
    );
  }
}
