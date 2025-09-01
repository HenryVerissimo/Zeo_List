import 'package:client/app/View/pages/home/create_task_page.dart';
import 'package:client/app/View/widgets/home/app_bar_widget.dart';
import 'package:client/app/View/widgets/home/task_card_widget.dart';
import 'package:client/app/models/task_model.dart';
import 'package:flutter/material.dart';



class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Task> listTasks = [
    Task(title: "Minha task", content: "Conteúdo do card", createdIn: "19/02/2012", completed: true), 
    Task(title: "Minha task", content: "teste", createdIn: "05/08/2024", completed: false),
    Task(title: "Minha task", content: "teste", createdIn: "22/07/2021", completed: false),
  ];
   int numberTasks = 0;

  void setNumberOfTasksNotCompleted(){
    setState(() {
     numberTasks = 0;
      for (Task task in listTasks){
        if (!task.completed){
          numberTasks ++;
        }
      } 
    });
  }

  void addNewTask(Task task){
    setState(() {
      listTasks.add(task);
    });
  }

  @override
  Widget build(BuildContext context){
    setNumberOfTasksNotCompleted();
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        children: [
          AppBarWidget(numberTasks: numberTasks,),
          Expanded(
            child: ListView.builder(
              itemCount: listTasks.length,
              itemBuilder: (context, index) {
                return Column(children: [
                  TaskCardWidget(task: listTasks[index], setNumberTasks: setNumberOfTasksNotCompleted),
                   index == (listTasks.length - 1) ? SizedBox(height: 80) : SizedBox(),
                ]); 
              },
            ),
          ),
          
        ],
      ),
      floatingActionButton: IconButton(
        onPressed: (){
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context)=> CreateTaskPage(addNewTask: addNewTask)));
          });
        }, 
        icon: Icon(Icons.add), 
        style: ButtonStyle(
          iconSize: WidgetStateProperty.all(50),
          iconColor: WidgetStateProperty.all(Colors.black),
          backgroundColor: WidgetStateProperty.all(Theme.of(context).primaryColor)
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}