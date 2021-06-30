import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_doey/classlist.dart';
import 'bottomscreen.dart';
import 'package:provider/provider.dart';
import 'package:to_doey/StateClass.dart';



class TaskScreen extends StatefulWidget {

  String val;
  TaskScreen({this.val});
  @override
  _TaskScreenState createState() => _TaskScreenState();
}

class _TaskScreenState extends State<TaskScreen> {
  Function ll()
  {
    setState(() {
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.deepPurple,
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0)),
              ),
              context: context,
              builder: (context) => botscr());
        },
        child: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                width: MediaQuery.of(context).size.width * 0.9,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        primary: Colors.white,
                        shape: CircleBorder(),
                        padding: EdgeInsets.all(10),
                      ),
                      child: Icon(
                        Icons.list,
                        color: Colors.deepPurple,
                        size: 35,
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Text('To-do List App',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 25,
                          color: Colors.white,
                        )),
                    Text('${ Provider.of<state>(context).tasks.length} tasks By Master G',
                        style: TextStyle(
                          fontWeight: FontWeight.w100,
                          fontSize: 10,
                          color: Colors.white,
                        )),
                  ],
                ),
              )),
          Expanded(
            flex: 3,
            child: Material(
                borderRadius: BorderRadius.vertical(
                  top: Radius.circular(10),
                ),
                color: Colors.white,
                child: ListView(
                  children: [
                    retask(),
                  ],
                )),
          ),
        ],
      ),
    );
  }
}

class retask extends StatelessWidget {
  String text;

  retask({this.text,});



  @override
  Widget build(BuildContext context) {

    return Expanded(
      child: ListView.builder(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return check(
            Provider.of<state>(context).tasks[index],
          );
        },
        itemCount:  Provider.of<state>(context).tasks.length,
      ),
    );
  }
}

class check extends StatefulWidget {
  String Texst;

  check(this.Texst);

  @override
  _checkState createState() => _checkState();
}

class _checkState extends State<check> {
  bool val = false;
  int jay = 0;


  @override
  Widget build(BuildContext context) {
    return Consumer<state>(
      builder: (context,state,child){
        return CheckboxListTile(
            activeColor: Colors.deepPurple,
            onChanged: (bool valua) {
              val = valua;
              setState(() {});
              jay++;
              if (jay==4){
                state.tasks[index],
              }
            },


            title: Text(
              widget.Texst,
              style: TextStyle(
                  decoration:val? TextDecoration.lineThrough : null),
            ),
            value: val,
            controlAffinity: ListTileControlAffinity.trailing
          //  <-- leading Checkbox
        );
      }
    );
  }
}

