import 'package:flutter/material.dart';

class ContainerSignin extends StatelessWidget {
  final height;
  final width;
  final void Function(bool?)? tap;

  const ContainerSignin({
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
                  child: const TextField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: 'Name',
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
                  child: const Form(
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
                        hintText: 'E-mail',
                      ),
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
                  child: const Form(
                    child: TextField(
                      decoration: InputDecoration(
                        border: UnderlineInputBorder(),
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
                                fontSize: size.height / 55,
                                color: Colors.black),
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
                  height: size.height * 150 / height,
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
                          fontSize: height / 80,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: size.height * 100 / height,
                ),
                Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        left: size.width * 125 / width,
                      ),
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          decoration: TextDecoration.underline,
                          color: const Color(0XFF3B4EA0),
                          fontWeight: FontWeight.bold,
                          fontSize: height / 120,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Positioned(
            right: height * 18 / height,
            top: height * 390 / height,
            child: IconButton(
              icon: const Icon(Icons.arrow_circle_right),
              color: const Color(0XFF3B4EA0),
              highlightColor: Colors.grey,
              iconSize: height * 80 / height,
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
