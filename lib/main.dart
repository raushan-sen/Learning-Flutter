import 'package:cause_words/screens/homepage.dart';
import 'package:cause_words/screens/login_page.dart';
import 'package:cause_words/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      routes: {
        MyWord.home:(context) => HomePage(),
        MyWord.login:(context) => LoginPage(),
        MyWord.signup:(context) => LoginPage(),
      }
    );
      
  }
}
