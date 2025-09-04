import 'package:client/app/models/task_model.dart';
import 'package:flutter/material.dart';

class CreateTaskPage extends StatefulWidget{

  final Function(Task) addNewTask;

  const CreateTaskPage({super.key, required this.addNewTask});

  @override
  State<CreateTaskPage> createState() => CreateTaskPageState();
}

class CreateTaskPageState extends State<CreateTaskPage>{
  final TextEditingController titleController = TextEditingController();
  final TextEditingController contentController = TextEditingController();

  @override
  void dispose(){
    titleController.dispose();
    contentController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: IconButton(
                    onPressed: (){
                      setState(() {
                        Navigator.pop(context);
                      });
                    }, 
                    icon: Icon(Icons.arrow_back_ios_outlined),
                    style: ButtonStyle(
                      iconColor: WidgetStateProperty.all(Colors.white),
                      iconSize: WidgetStateProperty.all(30)
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 8,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 60),
                  child: Text(
                    "NOVA TAREFA",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontFamily: "ComicRelief",
                      
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(10),
                  width: 350,
                  height: 300,
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(244, 244, 244, 1),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        flex: 2,
                        child: TextField(
                          controller: titleController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontFamily: "ComicRelief",
                            fontWeight: FontWeight.bold
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Título da tarefa",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                              
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 10,
                        child: TextField(
                          controller: contentController,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black,
                            fontFamily: "ComicRelief",
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: "Conteúdo da tarefa",
                            hintStyle: TextStyle(
                              color: Colors.grey,
                            )
                          ),
                          maxLines: 12,
                          maxLength: 300,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: (){
                          DateTime dateNow = DateTime.now();
                          String dateString = "${dateNow.day}/${dateNow.month}/${dateNow.year}";
                          Task newTask = Task(title: titleController.text, content: contentController.text, createdIn: dateString, completed: false);
                  
                          Navigator.pop(context);
                          widget.addNewTask(newTask);
                        },
                        style: ButtonStyle(
                          backgroundColor: WidgetStateProperty.all(Colors.blue),
                          foregroundColor: WidgetStateProperty.all(Colors.white),
                          minimumSize: WidgetStateProperty.all(Size(150, 40)),
                          textStyle: WidgetStateProperty.all(TextStyle(
                            fontSize: 20,
                            fontFamily: "ComicRelief",
                            fontWeight: FontWeight.bold,
                          )),
                          shape: WidgetStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          ))
                        ),
                        child: Text("CRIAR")
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}