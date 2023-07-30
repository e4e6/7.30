import'package:flutter/material.dart';
import'functions.dart';
import'screen_input.dart';
class ScreenHome extends StatefulWidget {
  const ScreenHome({super.key});
  @override
  State<ScreenHome> createState() => _ScreenHomeState();
}

class _ScreenHomeState extends State<ScreenHome> {
  var functions=Functions();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('To Do List'),
          backgroundColor: Colors.black87,
        ),
            body:
    ListView.builder(
      itemCount: 5,//functions.doData.length,
      itemBuilder: (BuildContext context, int index) {

      return Column(
        children: [

          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 70,
                padding:const EdgeInsets.fromLTRB(10, 0, 100, 0),
                alignment: Alignment.center,
                child: Text('$index'),
              ),

              IconButton(
                  padding:const EdgeInsets.fromLTRB(10, 0, 50, 0),
                  onPressed:(){

                    setState(() {
                    functions.removeDoData(index: index);
                  });

                  },
                  icon:const Icon(Icons.delete)),

            ],
          ),
          Container(
            height:1,
            color:Colors.black87
          )
        ],
      );
    },
    ),
          floatingActionButton: FloatingActionButton(
          onPressed: (){ Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ScreenInput()),
          );
            },
          child: const Icon(Icons.plus_one_rounded),
      ),
    );
  }
}
