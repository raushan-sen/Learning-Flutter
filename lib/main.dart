import 'package:cause_words/screens/homepage.dart';
import 'package:cause_words/screens/login_page.dart';
import 'package:cause_words/utils/appbar.dart';
import 'package:cause_words/utils/util.dart';
import 'package:flutter/material.dart';

// ignore: non_constant_identifier_names
String api_token = 'ac6e099e8c15b93b9b2fd10ac7cfc205e1075f2c';
// ignore: non_constant_identifier_names
String dict_url='https://api.dictionaryapi.dev/api/v2/entries/en/';

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
        initialRoute: MyWord.home,
        routes: {
          MyWord.home: (context) => const HomePage(),
          MyWord.login: (context) => const LoginPage(),
          MyWord.signup: (context) => const LoginPage(),
        });
  }
}
