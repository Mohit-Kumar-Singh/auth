import 'package:flutter/material.dart';

import 'loginpage.dart';
import 'homepage.dart';
import 'signup.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
    ));

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Loginpage(),
      routes: <String, WidgetBuilder>{
        '/landingpage': (BuildContext context) => new MyApp(),
        '/signup': (BuildContext context) => new SignupPage(),
        '/Homepage': (BuildContext context) => new HomePage(),
      },
    );
  }
}
