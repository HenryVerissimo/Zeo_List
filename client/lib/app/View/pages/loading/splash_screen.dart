import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final String splash = "assets/animations/marketing_strategy_checklist.riv";

  @override
  void initState() {
    super.initState();
    _navegateToHome();
  }

  void _navegateToHome() async{
    await Future.delayed(Duration(seconds: 5));

    if (mounted){
      Navigator.pushReplacementNamed(context, "/");
    }
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 30, 89, 190),
      body: RiveAnimation.asset(
        splash,
        stateMachines: ["State Machine 1"],
        artboard: "Splash",
      ));
  }
}