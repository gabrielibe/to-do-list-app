import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_doey/Screens/TaskScreen.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/StateClass.dart';

class botscr extends StatelessWidget {
  final myController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height * 0.55,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children: [
              Text('Add Task',
                style: TextStyle(
                  fontWeight: FontWeight.w700,
                  color: Colors.deepPurple,
                  fontSize: 25,
                ),
              ),
              TextField(
                controller: myController ,
                textAlign: TextAlign.center,
                autofocus: true,
                cursorColor: Colors.deepPurple,
                decoration: InputDecoration(
                  hintText: 'Add task here',
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.deepPurple),
                  ),
                ),

              ),
              SizedBox(
                height: 15,
              ),
              TextButton(onPressed: () {
                Navigator.pop(context);
               Provider.of<state>(context,listen: false).addtask(myController.text);
                },

              child: Text('Add'),
                style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.white),
                  backgroundColor:  MaterialStateProperty.all(Colors.deepPurple),
                ),
              )
            ],
          ),
        ));
  }
}
