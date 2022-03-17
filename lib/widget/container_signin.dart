import 'package:flutter/material.dart';

import '../signup_page.dart';

class ContainerSignin extends StatelessWidget {
  final height;
  final width;
  bool? checked;
  final void Function(bool?)? tap;

  ContainerSignin(
      {Key? key,
      this.height = 1675,
      this.width = 1195,
      this.tap,
      this.checked = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool _checked = false;
    return Padding(
      padding: EdgeInsets.only(top: 150 * size.height / size.height),
      child: Stack(
        children: [
          Container(
            height: height * size.height / size.height,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(height * 30 / height),
              color: Colors.white,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 124 / width,
                          top: size.height * 124 / height),
                      child: SizedBox(
                        child: Text(
                          'Welcome Back',
                          style: TextStyle(
                              color: const Color(0xff445ABC),
                              fontSize: height / 50,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 80 / height,
                ),
                SizedBox(
                  height: size.height * 50 / height,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 125 / width,
                      right: size.width * 125 / width),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) => validateEmail(value),
                      decoration: const InputDecoration(hintText: 'E-Mail'),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 50 / height,
                ),
                Padding(
                  padding: EdgeInsets.only(
                      left: size.width * 125 / width,
                      right: size.width * 125 / width),
                  child: Form(
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    child: TextFormField(
                      validator: (value) => validateStructure(value),
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
                        left: size.width * 75 / width,
                      ),
                      child: SizedBox(
                        child: Checkbox(
                          checkColor: Colors.blue,
                          value: _checked,
                          shape: const CircleBorder(),
                          onChanged: tap,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: size.width * 75 / width),
                      child: Text(
                        'Remember Me',
                        style: TextStyle(
                            fontSize: size.height / 55,
                            color: Colors.black,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: size.width * 200 / width,
                          right: size.width * 85 / width),
                      child: Text(
                        'Forgot password?',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: const Color(0XFF3B4EA0),
                          fontWeight: FontWeight.bold,
                          fontSize: size.height / 50,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: size.height * 120 / height,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: size.width * 125 / width,
                  ),
                  child: Row(
                    children: [
                      Text(
                        'Sign In',
                        style: TextStyle(
                          color: const Color(0XFF3B4EA0),
                          fontWeight: FontWeight.bold,
                          fontSize: size.height / 30,
                        ),
                      ),
                      Padding(
                        padding:
                            EdgeInsets.only(left: size.width * 500 / width),
                        child: IconButton(
                          icon: const Icon(Icons.arrow_circle_right),
                          color: const Color(0XFF3B4EA0),
                          highlightColor: Colors.grey,
                          iconSize: size.height * 200 / height,
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
                          left: size.width * 125 / width,
                          right: size.width * 125 / width),
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
                            fontSize: size.height / 50,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  String? validateEmail(String? value) {
    String pattern =
        r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]"
        r"{0,253}[a-zA-Z0-9])?)*$";
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid email address';
    } else {
      return null;
    }
  }

  String? validateStructure(String? value) {
    String pattern =
        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$';
    RegExp regExp = RegExp(pattern);
    if (value == null || value.isEmpty || !regExp.hasMatch(value)) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }
}
