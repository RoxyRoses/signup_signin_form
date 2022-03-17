import 'package:flutter/material.dart';
import 'package:signup_project/widget/container_signup.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset('assets/images/fundo.png'),
          ),
          ContainerSignup(
            tap: (newValue) {
              setState(() {
                ContainerSignup().checked = newValue;
              });
            },
          )
        ],
      ),
    );
  }
}
