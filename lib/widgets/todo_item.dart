import 'package:flutter/material.dart';
import 'package:web_app/constants/colors.dart';
import 'package:web_app/model/todo.dart';

class ToDoItem extends StatelessWidget {
  final ToDo toDo;

  const ToDoItem({Key? key, required this.toDo}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: ListTile(
        onTap: () {
          print('Clicked on todo item');
        },
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
        tileColor: Colors.white,
        leading: Icon(
            toDo.isDone ? Icons.check_box : Icons.check_box_outline_blank,
            color: tdBlue),
        title: Text(
          toDo.todoText!,
          style: TextStyle(
              fontSize: 16,
              color: tdBlack,
              decoration: toDo.isDone ? TextDecoration.lineThrough : null),
        ),
        trailing: Container(
          height: 35,
          width: 35,
          padding: EdgeInsets.all(0),
          margin: EdgeInsets.symmetric(vertical: 6),
          decoration: BoxDecoration(
              color: tdRed, borderRadius: BorderRadius.circular(5)),
          child: IconButton(
            color: Colors.white,
            iconSize: 18,
            icon: Icon(Icons.delete),
            onPressed: () {
              print('Clicked on delete icon');
            },
          ),
        ),
      ),
    );
  }
}
