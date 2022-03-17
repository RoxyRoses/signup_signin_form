import 'package:flutter/material.dart';
import 'package:signup_project/widget/container_signup.dart';

class SignInPage extends StatefulWidget {
  const SignInPage({Key? key}) : super(key: key);

  @override
  State<SignInPage> createState() => _SignInPageState();
}

class _SignInPageState extends State<SignInPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset('assets/images/fundo.png'),
          ),
          const ContainerSignin(
            height: 2000,
            width: 1000,
          )
        ],
      ),
    );
  }
}
