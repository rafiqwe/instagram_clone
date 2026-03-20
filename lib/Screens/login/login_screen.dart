import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/bottom_nav/bottom_nav.dart';
import 'package:instagram_clone/Screens/singup/signup_screen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    UiHelper.CustomImage(imageUrl: 'logo.png'),
                    const SizedBox(height: 20),
                    UiHelper.CustomTextFiled(
                      controller: TextEditingController(),
                      text: 'Email',
                      toHide: false,
                      textInputType: TextInputType.emailAddress,
                    ),
                    const SizedBox(height: 15),
                    UiHelper.CustomTextFiled(
                      controller: TextEditingController(),
                      text: 'Password',
                      toHide: true,
                      textInputType: TextInputType.visiblePassword,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        UiHelper.CustomTextButton(
                          text: 'Forgot Password?',
                          callFunction: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    UiHelper.CustomButton(
                      buttonName: 'Log in',
                      callBackFunction: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(builder: (context) => BottomNav()),
                        );
                      },
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        UiHelper.CustomImage(imageUrl: 'facebook_icon.png'),
                        UiHelper.CustomTextButton(
                          text: 'Log in with facebook',
                          callFunction: () {},
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Center(
                      child: Text(
                        'OR',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Don’t have an account?',
                          style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        UiHelper.CustomTextButton(
                          text: 'Sign up',
                          callFunction: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => SignUpScreen(),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
