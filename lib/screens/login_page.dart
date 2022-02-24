import 'package:cause_words/utils/util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: Column(
          children: [
            Image.asset(
              'static/images/welcome.png',
              fit: BoxFit.fitHeight,
            ),
            Text(
              "Welcome To Cause Words",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                fontFamily: GoogleFonts.lato().fontFamily,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                        hintText: "Enter Username", labelText: "Username"),
                  ),
                  TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password"),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            ElevatedButton(
              child: Text("Login"),
              onPressed: () {
                Navigator.pushNamed(context, MyWord.home);
              },
            ),
          ],
        ));
  }
}
