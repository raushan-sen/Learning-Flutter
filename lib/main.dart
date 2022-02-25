import 'package:cause_words/screens/homepage.dart';
import 'package:cause_words/screens/login_page.dart';
import 'package:cause_words/utils/util.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.green
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark
      ),
      initialRoute:MyWord.home,
      routes: {
        MyWord.home:(context) => const HomePage(),
        MyWord.login:(context) => const LoginPage(),
        MyWord.signup:(context) => const LoginPage(),
      }
    );
      
  }
}
