import 'package:cause_words/model/words.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WordWedgit extends StatefulWidget {
  final Words words;
  const WordWedgit({Key? key, required this.words}) : super(key: key);

  @override
  State<WordWedgit> createState() => _WordWedgitState();
}

class _WordWedgitState extends State<WordWedgit> {
  bool isfavbuttonclicked = false;
  bool isVoicebuttonclicked = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0.0,
      child: ListTile(
        leading: IconButton(onPressed:() {
          if (isfavbuttonclicked != true) {
            setState(() {
              isfavbuttonclicked = true;
            });
          } else {
            setState(() {
              isfavbuttonclicked = false;
            });
          }
        } ,
          
          icon:isfavbuttonclicked
            ? Icon(
                CupertinoIcons.square_favorites_alt_fill,
                color: Colors.blue.shade400,
              )
            : Icon(CupertinoIcons.square_favorites_alt,
                color: Colors.blue.shade400),
        ),
        title: Text(widget.words.word),
        subtitle: Text(widget.words.definition),
        trailing: IconButton(onPressed: () {
          if (isVoicebuttonclicked != true) {
            setState(() {
              isVoicebuttonclicked = true;
            });
          } else {
            setState(() {
              isVoicebuttonclicked = false;
            });
          }
        } ,
          icon: isVoicebuttonclicked?Icon(CupertinoIcons.volume_up,
            color: Colors.blue.shade400,) : Icon(
            CupertinoIcons.volume_down,
            color: Colors.blue.shade400,
          ),
        ),
      ),
    );
  }
}
