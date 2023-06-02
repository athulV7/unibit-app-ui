import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:unibit_app/constants.dart';
import 'package:unibit_app/view/widgets/bottom_navbar.dart';
import 'package:unibit_app/view/widgets/main_button_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(height * 0.14),
            color: const Color.fromARGB(255, 237, 237, 237),
            height: height * 0.4,
            width: double.infinity,
            child: Image.asset("assets/logo1.26acee9e-removebg-preview.png"),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.all(width * 0.05),
            child: SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Login",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: height * 0.03),
                  TextFormField(
                    decoration: textfielDecoration(
                        "Mobile Number", CupertinoIcons.phone),
                  ),
                  SizedBox(height: height * 0.025),
                  TextFormField(
                    decoration:
                        textfielDecoration("Password", Icons.lock_outline),
                  ),
                  Align(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Forgot password?",
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            //fontSize: 14,
                            color: Color(0xffFF8B22)),
                      ),
                    ),
                  ),
                  SizedBox(height: height * 0.02),
                    MainButtonWidget(
                    colors: const [Color(0xffFFC004), Color(0xffFF742F)],
                    label: "Login",
                    buttonWidth: double.infinity,
                    buttonHeight: width * 0.13,
                    ontapFunction: loginButtonPressed,
                  ),
                  SizedBox(height: height * 0.025),
                   MainButtonWidget(
                    label: "Login with OTP",
                    colors: const [
                      Color.fromARGB(255, 18, 148, 228),
                      Color(0xff0052BE)
                    ],
                     buttonWidth: double.infinity, 
                     buttonHeight: width * 0.13,
                    ontapFunction: loginButtonPressed, 
                  ),
                  SizedBox(height: height * 0.03),
                  Center(
                    child: Text.rich(
                      TextSpan(
                        children: [
                          const TextSpan(
                              text: "Don't have an account?",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          WidgetSpan(
                            child: SizedBox(width: width * 0.02),
                          ),
                          TextSpan(
                            text: "Sign up now",
                            style: const TextStyle(
                              color: Color(0xffFF8B22),
                              fontWeight: FontWeight.bold,
                            ),
                            recognizer: TapGestureRecognizer()..onTap = () {},
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

loginButtonPressed() {
  Get.to(BottomNavBar());
}
