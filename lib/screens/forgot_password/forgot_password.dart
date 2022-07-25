import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:login_screens/export/utils.dart';
import 'package:login_screens/export/widget.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({Key? key}) : super(key: key);

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final emailController = TextEditingController();
  final otpController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Surya', textAlign: TextAlign.center, style: logoFontStyle),
            const SizedBox(
              height: 50,
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SvgPicture.asset(
                'assets/images/forgot-password.svg',
                height: 150,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            DefaultTextField(
              padding: textFieldPadding,
              controller: emailController,
              title: "Email",
              icon: const Icon(
                Icons.mail,
                size: 20,
                color: Colors.grey,
              ),
            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 50),
              alignment: Alignment.center,
              child: Text(
                "By continuing, you agree to the Terms and Conditions",
                textAlign: TextAlign.center,
                style: defaultFontStyle,
              ),
            ),
            DefaultButton(
              title: 'Forgot Password',
              onpress: () => {Navigator.pushNamed(context, "/login")},
            ),
          ],
        ),
      ),
    );
  }
}
