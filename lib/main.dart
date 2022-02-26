import 'package:cause_words/screens/homepage.dart';
import 'package:cause_words/screens/login_page.dart';
import 'package:cause_words/utils/appbar.dart';
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
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.light,
      theme: MyThemes.lighttheme(context),
      darkTheme: MyThemes.darkhteme(context),
      initialRoute:MyWord.home,
      routes: {
        MyWord.home:(context) => const HomePage(),
        MyWord.login:(context) => const LoginPage(),
        MyWord.signup:(context) => const LoginPage(),
      }
    );
      
  }
}
