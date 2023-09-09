import 'package:flutter/material.dart';
import 'package:login/pages/home/home.dart';
import 'package:login/pages/register/register.dart';
import 'package:login/utils/app_color.dart';
import 'package:login/widgets/custom_button.dart';
import 'package:login/widgets/custom_text_field.dart';
import 'package:login/widgets/logo.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 78,
              ),
              const LogoWidget(),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: CustomButton(
                      text: "Dispatcher",
                      fillColor: AppColor.mainColor,
                      borderColor: AppColor.whiteColor,
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Gilroy-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: CustomButton(
                      text: "Driver",
                      fillColor: AppColor.whiteColor,
                      borderColor: AppColor.mainColor,
                      textStyle: const TextStyle(
                        color: Color(0xFF001E40),
                        fontSize: 15,
                        fontFamily: 'Gilroy-Regular',
                        fontWeight: FontWeight.w400,
                        height: 1.33,
                        letterSpacing: -0.50,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                'Login',
                style: TextStyle(
                  color: Color(0xFF172518),
                  fontSize: 26,
                  fontFamily: 'Gilroy-Regular',
                  fontWeight: FontWeight.w400,
                  height: 1.12,
                ),
              ),
              const CustomTextField(
                labelText: "Email",
                hintText: "Enter your email and password",
                inputType: TextInputType.text,
                icon: null,
              ),
              const CustomTextField(
                labelText: "Phone number",
                hintText: "Enter your  phone number",
                inputType: TextInputType.phone,
                icon: null,
              ),
              const CustomTextField(
                labelText: "Password",
                hintText: "Enter your password",
                inputType: TextInputType.visiblePassword,
                icon: Icons.remove_red_eye_outlined,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      textAlign: TextAlign.right,
                      style: TextStyle(
                        color: Color(0xFF172518),
                        fontSize: 14,
                        fontFamily: 'Gilroy-Medium',
                        fontWeight: FontWeight.w400,
                        height: 1.08,
                        letterSpacing: 0.70,
                      ),
                    ),
                  )
                ],
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(),
                      ));
                },
                child: CustomButton(
                  text: "Enter",
                  fillColor: AppColor.mainColor,
                  borderColor: AppColor.mainColor,
                  textStyle: const TextStyle(
                    color: Color(0xFFFFF9FF),
                    fontSize: 24,
                    fontFamily: 'Gilroy-Regular',
                    fontWeight: FontWeight.w400,
                    height: 0.75,
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Center(
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => RegisterScreen(),
                        ));
                  },
                  child: const Text(
                    'Does your account not exist?\nSign up',
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Color(0xFF172518),
                      fontSize: 14,
                      fontFamily: 'Gilroy-Medium',
                      fontWeight: FontWeight.w400,
                      letterSpacing: 0.70,
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
