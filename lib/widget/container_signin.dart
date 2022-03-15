import 'package:flutter/material.dart';

class ContainerSignin extends StatelessWidget {
  final height;
  final width;

  const ContainerSignin({
    Key? key,
    this.height = 1675,
    this.width = 1195,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: EdgeInsets.only(top: 1150 * size.height / 2560),
      child: Container(
        height: height * size.height / 2560,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(height * 30 / height),
          color: Colors.white,
        ),
        child: Column(
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
          ],
        ),
      ),
    );
  }
}
