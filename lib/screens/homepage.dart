import 'package:cause_words/model/words.dart';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../it/it.dart';
import '../utils/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            // leading: const Icon(CupertinoIcons.add),
            title: const Text(
              'Caused Words',
              style: TextStyle(color: Colors.black),
            )),
        drawer: const OurDrawer(),
        body: ListView.builder(
            itemCount: WordItems.wordlist.length,
            itemBuilder: (context, index) {
              return WordWedgit(words:WordItems.wordlist[index]);
            }));
  }
}
