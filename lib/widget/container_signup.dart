import 'package:flutter/material.dart';
import 'package:signup_project/methods.dart';
import '../pages/signin_page.dart';

class ContainerSignup extends StatefulWidget {
  final height;
  final width;
  bool checked;

  final void Function(bool?) tap;

  ContainerSignup(
      {Key? key,
      this.height = 1675,
      this.width = 1195,
      required this.tap,
      this.checked = false})
      : super(key: key);

  @override
  State<ContainerSignup> createState() => _ContainerSignupState();
}

class _ContainerSignupState extends State<ContainerSignup> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: size.height * 280 / 1195),
      child: Container(
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                        left: size.width * 124 / 1195,
                        top: size.width * 124 / 1195),
                    child: SizedBox(
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                            color: const Color(0xff445ABC),
                            fontSize: widget.width * 38 / 1195,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 125 / 1195,
                    right: size.width * 125 / 1195),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    validator: (value) => Methods().validateName(value),
                    decoration: const InputDecoration(hintText: 'Name'),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
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
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                    left: size.width * 125 / 1195,
                    right: size.width * 125 / 1195),
                child: Form(
                  autovalidateMode: AutovalidateMode.onUserInteraction,
                  child: TextFormField(
                    validator: (value) => Methods().validateStructure(value),
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
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: size.width * 75 / 1195),
                    child: RichText(
                      text: TextSpan(
                          style: TextStyle(
                              fontSize: size.height / 55, color: Colors.black),
                          children: const <TextSpan>[
                            TextSpan(text: 'I agree to the'),
                            TextSpan(
                              text: 'Terms of Service',
                              style: TextStyle(
                                  color: Color(0XFF3B4EA0),
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(text: ' and '),
                            TextSpan(
                              text: 'Privacy Police',
                              style: TextStyle(
                                  color: Color(0XFF3B4EA0),
                                  fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: size.width * 125 / 1195,
                ),
                child: Row(
                  children: [
                    Text(
                      'Sign Up',
                      style: TextStyle(
                        color: const Color(0XFF3B4EA0),
                        fontWeight: FontWeight.bold,
                        fontSize: widget.width * 25 / 1195,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: size.width * 500 / 1195),
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
                                builder: (context) => const SigninPage()));
                      }),
                      child: Text(
                        'Sign in',
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
    );
  }
}
