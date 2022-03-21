import 'package:flutter/material.dart';

import '../methods.dart';
import '../pages/signup_page.dart';

class ContainerSignin extends StatefulWidget {
  final height;
  final width;
  bool checked;
  final void Function(bool?) tap;

  ContainerSignin(
      {Key? key,
      this.height = 1675,
      this.width = 1195,
      required this.tap,
      this.checked = false})
      : super(key: key);

  @override
  State<ContainerSignin> createState() => _ContainerSigninState();
}

class _ContainerSigninState extends State<ContainerSignin> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 330 / 1195),
      child: Stack(
        children: [
          Container(
            height: widget.height * size.height / 1195,
            decoration: BoxDecoration(
              borderRadius:
                  BorderRadius.circular(widget.height * 30 / widget.height),
              color: Colors.white,
            ),
            child: SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 124 / 1195,
                            top: size.width * 150 / 1195),
                        child: SizedBox(
                          child: Text(
                            'Welcome Back',
                            style: TextStyle(
                                color: const Color(0xff445ABC),
                                fontSize: widget.width * 38 / 1195,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 125 / 1195,
                        right: size.width * 125 / 1195),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        validator: (value) => Methods().validateEmail(value),
                        decoration: const InputDecoration(hintText: 'E-Mail'),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 125 / 1195,
                        right: size.width * 125 / 1195),
                    child: Form(
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: TextFormField(
                        validator: (value) =>
                            Methods().validateStructure(value),
                        decoration: const InputDecoration(
                          hintText: 'Password',
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                          left: size.width * 75 / 1195,
                        ),
                        child: SizedBox(
                          child: Checkbox(
                              checkColor: Colors.white,
                              activeColor: Colors.blue,
                              value: widget.checked,
                              shape: const CircleBorder(),
                              onChanged: (value) {
                                setState(() {
                                  widget.checked = !widget.checked;
                                });
                                widget.tap(value);
                              }),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(right: size.width * 75 / 1195),
                        child: Text(
                          'Remember Me',
                          style: TextStyle(
                              fontSize: widget.width * 12 / 1195,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 200 / 1195,
                            right: size.width * 85 / 1195),
                        child: Text(
                          'Forgot password?',
                          style: TextStyle(
                            decoration: TextDecoration.underline,
                            color: const Color(0XFF3B4EA0),
                            fontWeight: FontWeight.bold,
                            fontSize: widget.width * 12 / 1195,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 45,
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 125 / 1195,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Sign In',
                          style: TextStyle(
                            color: const Color(0XFF3B4EA0),
                            fontWeight: FontWeight.bold,
                            fontSize: widget.width * 25 / 1195,
                          ),
                        ),
                        Padding(
                          padding:
                              EdgeInsets.only(left: size.width * 500 / 1195),
                          child: IconButton(
                            icon: const Icon(Icons.arrow_circle_right),
                            color: const Color(0XFF3B4EA0),
                            highlightColor: Colors.grey,
                            iconSize: size.width * 200 / 1195,
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(
                            left: size.width * 125 / 1195,
                            right: size.width * 125 / 1195),
                        child: GestureDetector(
                          onTap: (() {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SignUpPage()));
                          }),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              color: const Color(0XFF3B4EA0),
                              fontWeight: FontWeight.bold,
                              fontSize: widget.width * 15 / 1195,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
