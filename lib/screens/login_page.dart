import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/util.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isbuttonclicked = false;
  final _formKey = GlobalKey<FormState>();

  gettingData(BuildContext context) async {
    if (_formKey.currentState!.validate()) {
      setState(() {
        isbuttonclicked = true;
      });
      await Future.delayed(const Duration(seconds: 1));
      await Navigator.pushNamed(
        context,
        MyWord.home,
      );
      setState(() {
        isbuttonclicked = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.white,
        child: SingleChildScrollView(
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
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else {
                            return null;
                          }
                        },
                        decoration: const InputDecoration(
                            hintText: "Enter Username", labelText: "Username"),
                      ),
                      TextFormField(
                        obscureText: true,
                        decoration: const InputDecoration(
                            hintText: "Enter Password", labelText: "Password"),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'Please enter some text';
                          } else if (value.length < 8) {
                            return "Password length should be atleast 8";
                          } else if (value == "abcdefgh") {
                            return "Try another Password";
                          } else if (value == '12345678') {
                            return "Try another Password";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              InkWell(
                  onTap: () => gettingData(context),
                  child: AnimatedContainer(
                      duration: const Duration(seconds: 1),
                      width: isbuttonclicked ? 50 : 150,
                      height: 50,
                      alignment: Alignment.center,
                      child: isbuttonclicked
                          ? const Icon(
                              Icons.done,
                              color: Colors.green,
                            )
                          : const Text('Login',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                fontSize: 18,
                              )),
                      decoration: BoxDecoration(
                          color:
                              isbuttonclicked ? Colors.transparent : Colors.green,
                          border: Border.all(
                            color: Colors.green,
                            width: 1,
                          ),
                          borderRadius:
                              BorderRadius.circular(isbuttonclicked ? 50 : 8))))
            ],
          ),
        ));
  }
}
