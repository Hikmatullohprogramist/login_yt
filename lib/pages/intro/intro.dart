import 'package:flutter/material.dart';
import 'package:login/pages/login/login.dart';
import 'package:login/pages/register/register.dart';
import 'package:login/utils/app_color.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/logo.dart';

class IntroScreen extends StatelessWidget {
  const IntroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 120,
          ),
          LogoWidget(),
          const SizedBox(
            height: 60,
          ),
          const Text(
            "Welcome to Muslim \nLogistic",
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
          ),
          const SizedBox(
            height: 72,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ));
            },
            child: CustomButton(
              text: "Log in",
              fillColor: AppColor.mainColor,
              borderColor: AppColor.mainColor,
              textStyle: TextStyle(
                color: AppColor.whiteColor,
                fontSize: 21.20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => RegisterScreen(),
                  ));
            },
            child: CustomButton(
              text: "Register",
              fillColor: AppColor.whiteColor,
              borderColor: AppColor.mainColor,
              textStyle: const TextStyle(
                color: Color(0xFF001E40),
                fontSize: 21.20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
