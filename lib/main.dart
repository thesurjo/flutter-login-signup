import 'package:flutter/material.dart';
import 'package:login_screens/route.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return OrientationBuilder(
          builder: (context, orientation) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Login Screens',
              initialRoute: '/login',
              onGenerateRoute: (RouteSettings setting) {
                var routes = router(setting);
                WidgetBuilder builder = routes[setting.name]!;
                return MaterialPageRoute(
                  builder: (context) => builder(context),
                );
              },
            );
          },
        );
      },
    );
  }
}
