import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class state extends ChangeNotifier {
  bool valua = false;


  List<String> tasks = ['joseph leuing ', 'daniel port', 'karreem amstrong'];


void addtask(String task){
  tasks.add(task);
  notifyListeners();
}

 void togglecheck(bool jay){
  valua = jay;
   //valua = bal;
    notifyListeners();
}

void delet(int index){
  tasks.removeAt(index);
}

}