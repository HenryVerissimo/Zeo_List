import 'package:client/app/View/pages/home/create_task_page.dart';
import 'package:client/app/View/widgets/home/app_bar_widget.dart';
import 'package:client/app/View/widgets/home/task_card_widget.dart';
import 'package:client/app/models/task_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  List<Task> listTasks = [];
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

  void removeTask(Task task){
    setState(() {
      listTasks.remove(task);
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
          listTasks.isNotEmpty
            ? Expanded(
              child: ListView.builder(
                itemCount: listTasks.length,
                itemBuilder: (context, index) {
                  return Column(children: [
                    TaskCardWidget(task: listTasks[index], setNumberTasks: setNumberOfTasksNotCompleted, removeTaskFunc: removeTask),
                    index == (listTasks.length - 1) ? SizedBox(height: 80) : SizedBox(),
                  ]); 
                },
              ),
            )
            : Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset("assets/images/icon_dormindo.svg", height: 70),
                  Text(
                    "Tudo calmo por aqui",
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "ComicRelief",
                      color: const Color.fromARGB(60, 255, 255, 255),
                    ),
                  ),
                  Text(
                    "Você ainda não tem nenhuma tarefa",
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "ComicRelief",
                      color: const Color.fromARGB(60, 255, 255, 255),
                    ),
                  )
                ],
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