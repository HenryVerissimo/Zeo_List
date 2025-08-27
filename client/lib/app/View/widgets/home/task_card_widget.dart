import 'package:client/app/models/task_model.dart';
import 'package:flutter/material.dart';

class TaskCardWidget extends StatefulWidget{
  final Task task;
  final VoidCallback setNumberTasks;

  const TaskCardWidget({
    super.key,
    required this.task,
    required this.setNumberTasks
  });

  @override
  State<TaskCardWidget> createState() => TaskCardWidgetState();
}

class TaskCardWidgetState extends State<TaskCardWidget>{

  bool openCard = false;
  
  @override
  Widget build(BuildContext context){
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 10, right: 20, left: 20),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        height: openCard
        ? 300
        : 70,
        decoration: BoxDecoration(
          color: widget.task.completed
          ? Color.fromRGBO(244, 244, 244, 0.8)
          : Color.fromRGBO(244, 244, 244, 1),
          borderRadius: BorderRadius.circular(10)
        ),
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: SizedBox(
              height: 280,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 20),
                    child: Expanded(
                      flex: 2,
                      child: Row(
                        children: [
                          Flexible(
                            flex: 2,
                            child: Padding(
                              padding: const EdgeInsets.only(right: 5),
                              child: IconButton(
                                onPressed: (){
                                  setState(() {
                                    widget.task.completed = !widget.task.completed;
                                    widget.setNumberTasks();
                                  });
                                },
                                icon: widget.task.completed
                                ? Icon(Icons.check)
                                : Icon(Icons.close),
                                style: ButtonStyle(
                                  iconSize: WidgetStateProperty.all(30),
                                  iconColor: WidgetStateProperty.all(Colors.black),
                                  backgroundColor: WidgetStateProperty.all(
                                    widget.task.completed
                                    ? Color.fromRGBO(104, 200, 115, 1)
                                    : const Color.fromARGB(255, 236, 83, 83)
                                  ),
                                ),
                              ),
                            ),
                          ),
                        Expanded(
                          flex: 9,
                          child: Text(
                            widget.task.title, 
                            style: TextStyle(
                              color: Colors.black,
                              fontFamily: "ComicRelief",
                              fontSize: 20
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: IconButton(onPressed: (){
                            setState(() {
                              openCard = !openCard;
                            });
                          }, 
                          icon: openCard
                          ? Icon(Icons.arrow_drop_up_outlined)
                          : Icon(Icons.arrow_drop_down), iconSize: 30,)
                        ),
                        ],
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Wrap(
                          alignment: WrapAlignment.start,
                          children: [
                            Text(
                              widget.task.content,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: "ComicRelief",
                                fontWeight: FontWeight.w300,
                              ),
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    flex: 1,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(bottom: 12),
                          child: Text(
                            widget.task.createdIn,
                            style: TextStyle(
                              fontSize: 12,
                              fontFamily: "ComicRelief",
                              fontWeight: FontWeight.w300
                            ),
                          ),
                        ),
                        TextButton(
                          onPressed: (){}, 
                          child: Text("DELETAR", style: TextStyle(color: Colors.red),),
                        )       
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}