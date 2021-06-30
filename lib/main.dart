import 'package:flutter/material.dart';
import 'package:to_doey/StateClass.dart';
import 'Screens/TaskScreen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context)=> state(),
      child: MaterialApp(
        home: TaskScreen(),
      ),
    );
  }
}
