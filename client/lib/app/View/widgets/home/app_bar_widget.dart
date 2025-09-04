import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget{

  final int numberTasks;

  const AppBarWidget({
    super.key, 
    required this.numberTasks,
  });

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>{

  @override
  Widget build(BuildContext context){
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 150,
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadiusGeometry.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20)
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: IconButton(onPressed: (){}, icon: Icon(Icons.menu, size: 40, color: Colors.white,
            ))),
            Expanded(
              flex: 8,
              child: Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "Nome do usuário",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ), 
                    Text(
                      "${widget.numberTasks} Tarefas",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold
                      ),
                    ),
                    
                  ],
                ),
              ),
            ),
            Image.asset("assets/icons/user_icon.png"),
          ],
        ),
      ),
    );
  }
}