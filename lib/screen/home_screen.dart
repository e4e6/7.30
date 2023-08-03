import'package:flutter/material.dart';

import'../data/functions/todo_functions.dart';
import'input_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var todoFunctions=TodoFunctions();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('To Do List'),
          backgroundColor: Colors.black87,
        ),

        body: ListView.builder(
          itemCount: todoFunctions.todoInfoData.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    InkWell(
                      child: Container(
                        color: todoFunctions.todoInfoData[index].isDone
                            ? Colors.blueGrey
                            : Colors.red,
                        height: 70,
                        padding:const EdgeInsets.fromLTRB(10, 0, 100, 0),
                        alignment: Alignment.center,
                        child: Text('$index'),
                      ),
                      onTap: () {
                        setState((){
                        todoFunctions.changeTodoInfoIsDone(index: index);},
                        );
                      }
                    ),
                    IconButton(
                        padding:const EdgeInsets.fromLTRB(10, 0, 50, 0),
                        onPressed:(){
                          setState(() {
                          todoFunctions.removeTodoInfoData(index: index);
                        });

                        },
                        icon:const Icon(Icons.delete)
                    ),
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
          onPressed: (){
            Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const InputScreen()
            ),
            );
          },
            child: const Icon(Icons.plus_one_rounded),
        ),
    );
  }
}
