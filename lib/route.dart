import 'package:flutter/material.dart';
import 'package:login_screens/export/screen.dart';

Map<String, WidgetBuilder> router(RouteSettings settings) {
  return {
    '/': (context) => const Home(),
    '/login': (context) => const Login(),
    '/register': (context) => const Register(),
    '/forgot-password': (context) => const ForgotPassword(),
  };
}
