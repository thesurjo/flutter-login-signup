import 'package:flutter/material.dart';
import 'package:login_screens/export/utils.dart';
import 'package:login_screens/export/widget.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgcolor,
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            DefaultTextField(
              controller: emailController,
              title: "Email or username",
              icon: const Icon(
                Icons.mail,
                size: 20,
                color: Colors.grey,
              ),
            ),
            DefaultTextField(
              controller: passwordController,
              title: "Password",
              icon: const Icon(
                Icons.lock,
                size: 20,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
