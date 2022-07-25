import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:login_screens/export/utils.dart';
import 'package:login_screens/export/widget.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              alignment: Alignment.center,
              child: SvgPicture.asset(
                'assets/images/to_the_star.svg',
                height: 150,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text('Welcome to TheSurjo',
                textAlign: TextAlign.center, style: titleFontStyle),
            const SizedBox(
              height: 5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                  'Discover attractive login, signup and forgot password and and implement it in your code.',
                  textAlign: TextAlign.center,
                  style: defaultFontStyle),
            ),
            const SizedBox(
              height: 150,
            ),
            DefaultButton(
              title: 'Sign in',
              onpress: () => {Navigator.pushNamed(context, "/login")},
            ),
            DefaultButton(
              title: 'Register',
              onpress: () => {Navigator.pushNamed(context, "/register")},
            ),
          ],
        ),
      ),
    );
  }
}
