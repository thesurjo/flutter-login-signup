import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_screens/export/utils.dart';
import 'package:login_screens/export/widget.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final usernameController = TextEditingController();
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    usernameController.dispose();
    firstnameController.dispose();
    lastnameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Surya', style: logoFontStyle),
              const SizedBox(
                height: 30,
              ),
              Padding(
                padding: textFieldPadding,
                child: Row(
                  children: [
                    Expanded(
                      child: DefaultTextField(
                        controller: emailController,
                        title: "Firstname",
                        icon: const Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 7,
                    ),
                    Expanded(
                      child: DefaultTextField(
                        controller: emailController,
                        title: "Lastname",
                        icon: const Icon(
                          Icons.person,
                          size: 20,
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              DefaultTextField(
                padding: textFieldPadding,
                controller: emailController,
                title: "Email",
                icon: const Icon(
                  Icons.email,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              DefaultTextField(
                controller: passwordController,
                padding: textFieldPadding,
                title: "Password",
                icon: const Icon(
                  Icons.lock,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              DefaultTextField(
                controller: passwordController,
                padding: textFieldPadding,
                title: "Confirm Password",
                icon: const Icon(
                  Icons.lock,
                  size: 20,
                  color: Colors.grey,
                ),
              ),
              DefaultButton(
                title: 'Register',
                onpress: () => {Navigator.pushNamed(context, "/")},
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                alignment: Alignment.center,
                child: RichText(
                  text: TextSpan(
                      text: "Already have an account? ",
                      style: defaultFontStyle,
                      children: [
                        TextSpan(
                          text: 'Sign In',
                          style: boldFontStyle,
                          recognizer: TapGestureRecognizer()
                            ..onTap = () => {Navigator.pushNamed(context, "/login")},
                        )
                      ]),
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 5, horizontal: 25),
                alignment: Alignment.center,
                child: Text(
                  'or',
                  style: defaultFontStyle,
                ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SocialBox(
                      onpress: () => {},
                      icon: SvgPicture.asset(
                        "assets/icons/facebook.svg",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SocialBox(
                      onpress: () => {},
                      icon: SvgPicture.asset(
                        "assets/icons/instagram.svg",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SocialBox(
                      onpress: () => {},
                      icon: SvgPicture.asset(
                        "assets/icons/apple.svg",
                        height: 40,
                        width: 40,
                      ),
                    ),
                    SocialBox(
                      onpress: () => {},
                      icon: SvgPicture.asset(
                        "assets/icons/twitter.svg",
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
