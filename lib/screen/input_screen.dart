import "package:flutter/material.dart";

import 'package:test_1/data/model/todo_info_model.dart';
import '../data/functions/todo_functions.dart'; //절대 경로로 적는법?

class InputScreen extends StatefulWidget {
  const InputScreen({Key? key}) : super(key: key);

  @override
  State<InputScreen> createState() => _InputScreenState();
}
class _InputScreenState extends State<InputScreen> {

  String content="";
  var todoFunctions=TodoFunctions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            decoration: const InputDecoration(
              hintText: 'Todo Value Name',
            ),
            onChanged: (text) {
              content = text;
              //print(content);
            },
          ),
          Center(
            child: ElevatedButton(
              child: const Text('OK'),
              onPressed: (){
                setState(() {
                  Navigator.of(context).pop(content);
                });
              },
            )
          ),
        ],
      )
    );
  }
}
