import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Caused Words')),
      drawer: Drawer(),
      body: Center(
          child: Container(
        child: Text('Welcome to Cause Words'),
      )),
    );
  }
}
