import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class BookLoading extends StatefulWidget{

  final Function loadFunc;
  final dynamic pageRoute;
  final bool routeStringMode;

  const BookLoading({
    super.key,
    required this.loadFunc,
    required this.pageRoute,
    this.routeStringMode = false,
  });

  @override
  State<BookLoading> createState() => BookLoadingState();
}

class BookLoadingState extends State<BookLoading>{

  final String loadingString = "assets/animations/reruled_loading_screen.riv";

  @override
  void initState() {
    super.initState();
    _loadingSomething();
  }

  void _loadingSomething() async {
    await Future.delayed(Duration(seconds: 5));
    await widget.loadFunc();
    _navigateToPage();
  }

  void _navigateToPage(){
    if (widget.routeStringMode) {
      Navigator.pushReplacementNamed(context, widget.pageRoute);
    } else {
      Navigator.pushReplacement(context, widget.pageRoute);
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: RiveAnimation.asset(
        loadingString,
        stateMachines: ["State Machine 1"],
        artboard: "Artboard",
      ),
    );
  }
}