import 'package:flutter/material.dart';
import 'package:instagram_clone/Screens/login/login_screen.dart';
import 'package:instagram_clone/Widgets/ui_helper.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({super.key});

  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  UiHelper.CustomImage(imageUrl: 'logo.png'),
                  SizedBox(height: 20),
                  UiHelper.CustomTextFiled(
                    controller: emailController,
                    text: 'Email',
                    toHide: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  UiHelper.CustomTextFiled(
                    controller: emailController,
                    text: 'Password',
                    toHide: true,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 10),
                  UiHelper.CustomTextFiled(
                    controller: emailController,
                    text: 'Username',
                    toHide: false,
                    textInputType: TextInputType.emailAddress,
                  ),
                  SizedBox(height: 20),
                  UiHelper.CustomButton(
                    buttonName: 'Sign up',
                    callBackFunction: () {},
                  ),
                  SizedBox(height: 20),
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
                      Text(
                        'Already have an account?',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      UiHelper.CustomTextButton(
                        text: 'Log In',
                        callFunction: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
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
    );
  }
}
