import 'package:client/app/models/task_model.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatefulWidget{
  final Task task;
  final VoidCallback setNumberTasks;
  final Function(Task) removeTaskFunc;

  const TaskCardWidget({
    super.key,
    required this.task,
    required this.setNumberTasks,
    required this.removeTaskFunc
  });

  @override
  State<TaskCardWidget> createState() => TaskCardWidgetState();
}

class TaskCardWidgetState extends State<TaskCardWidget>{

  bool openCard = false;
  
  @override
  Widget build(BuildContext context){
    return Center(
      child: AnimatedContainer(
        margin: EdgeInsetsGeometry.only(top: 10, bottom: 10),
        padding: EdgeInsetsGeometry.all(10),
        duration: Duration(milliseconds: 300),
        height: openCard ?  300 : 70,
        width: 350,
        decoration: BoxDecoration(
          color: widget.task.completed
          ? Color.fromRGBO(217, 217, 217, 1)
          : Color.fromRGBO(244, 244, 244, 1),
          borderRadius: BorderRadius.circular(10),
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: SizedBox(
            height: 280,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            widget.task.completed = !widget.task.completed;
                            widget.setNumberTasks();
                          });
                        }, 
                        icon: Icon(
                          widget.task.completed
                          ? Icons.check
                          : Icons.close
                        ),
                        style: ButtonStyle(
                          iconColor: WidgetStateProperty.all(Colors.black),
                          iconSize: WidgetStateProperty.all(30),
                          backgroundColor: WidgetStateProperty.all(
                           widget.task.completed
                           ? Color.fromRGBO(104, 200, 115, 1)
                           : Color.fromRGBO(237, 68, 96, 1),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 8,
                      child: Text(
                        widget.task.title,
                        style: TextStyle(
                          fontSize: 18,
                          color: Colors.black,
                          fontFamily: "ComicRelief",
                          fontWeight: FontWeight.bold
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: IconButton(
                        onPressed: (){
                          setState(() {
                            openCard = !openCard;
                          });
                        }, 
                        icon: AnimatedRotation(
                          turns: openCard ? -0.5 : 0.0, 
                          duration: Duration(milliseconds: 300),
                          child: Icon(Icons.arrow_drop_down),
                        )
                      ),
                    ),
                  ]
                ),
                Expanded(
                  flex: 10,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Wrap(
                          children: [
                            Text(
                              widget.task.content,
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black,
                                fontFamily: "ComicRelief",
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        widget.task.createdIn,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black,
                          fontFamily: "ComicRelief",
                        ),
                      ),
                      TextButton(
                        onPressed: (){
                          widget.removeTaskFunc(widget.task);
                        }, 
                        child: Text(
                          "DELETAR",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red,
                            fontFamily: "ComicRelief",
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ),
    );
  }
}