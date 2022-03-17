import 'package:flutter/material.dart';
import '../signin_page.dart';

class ContainerSignup extends StatelessWidget {
  final height;
  final width;
  final void Function(bool?)? tap;

  const ContainerSignup({
    Key? key,
    this.height = 1675,
    this.width = 1195,
    this.tap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    bool _checked = false;
    return Padding(
      padding: EdgeInsets.only(top: 150 * size.height / size.height),
      child: Container(
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
                      'Get Started',
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
            Padding(
              padding: EdgeInsets.only(
                  left: size.width * 125 / width,
                  right: size.width * 125 / width),
              child: Form(
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: TextFormField(
                  validator: (value) => validateName(value),
                  decoration: const InputDecoration(hintText: 'Name'),
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
            SizedBox(
              height: size.height * 10 / height,
            ),
            Padding(
              padding: EdgeInsets.only(
                left: size.width * 125 / width,
              ),
              child: Row(
                children: [
                  Text(
                    'Sign Up',
                    style: TextStyle(
                      color: const Color(0XFF3B4EA0),
                      fontWeight: FontWeight.bold,
                      fontSize: size.height / 30,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: size.width * 500 / width),
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
                              builder: (context) => const SigninPage()));
                    }),
                    child: Text(
                      'Sign in',
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
    RegExp regex = RegExp(pattern);
    if (value == null || value.isEmpty || !regex.hasMatch(value)) {
      return 'Enter a valid password';
    } else {
      return null;
    }
  }

  String? validateName(String? value) {
    if (value == null || value.isEmpty) {
      return 'Enter a valid name';
    } else {
      return null;
    }
  }
}
