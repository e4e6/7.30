import "package:flutter/material.dart";

class ScreenInput extends StatelessWidget {
   ScreenInput({super.key});

  String content="";
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TextField(
            decoration: InputDecoration(
            ),
          ),
          Center(
            child: ElevatedButton(
              child: const Text('OK'),
              onPressed: (){
                Navigator.pop(context);
              },
            )
          ),
        ],
      )
    );
  }
}
