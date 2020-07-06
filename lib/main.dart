import 'package:flutter/material.dart';
import 'package:personal_web/commons/commons.dart';
import 'package:personal_web/pages/home_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (context) => HomePage(),
      },
      debugShowCheckedModeBanner: false,
      title: 'Personal Web',
      theme: ThemeData(
        fontFamily: 'Rubik',
        textTheme: TextTheme(
          headline1: TextStyle(
            fontSize: 25.0,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
            color: ColorPalette.darkGrey,
          ),
          headline2: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            color: ColorPalette.pink,
          ),
          headline3: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.normal,
            color: ColorPalette.grey,
          ),
          headline4: TextStyle(
            color: Colors.black,
            fontSize: 25.0,
            fontStyle: FontStyle.normal,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
