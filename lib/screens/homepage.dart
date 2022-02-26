import 'package:flutter/material.dart';

import '../utils/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true,
       title: const Text('Caused Words',style: TextStyle(color: Colors.black),)),
      drawer: const OurDrawer(),
      body: Center(
          // ignore: avoid_unnecessary_containers
          child: Container(
        child: const Text('Cause Words'),
      )),
    );
  }
}
