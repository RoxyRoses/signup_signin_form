import 'package:flutter/material.dart';
import 'package:signup_project/widget/container_signin.dart';

class SigninPage extends StatefulWidget {
  const SigninPage({Key? key}) : super(key: key);

  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: true,
      body: Stack(
        children: [
          SizedBox(
            child: Image.asset('assets/images/fundo.png'),
          ),
          ContainerSignin(
            tap: (newValue) {},
          )
        ],
      ),
    );
  }
}
