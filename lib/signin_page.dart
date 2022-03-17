import 'package:flutter/material.dart';
import 'package:signup_project/widget/container_signin.dart';
import 'package:signup_project/widget/container_signup.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset('assets/images/fundo.png'),
          ),
          const ContainerSignin()
        ],
      ),
    );
  }
}
