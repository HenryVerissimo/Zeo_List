import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:rive/rive.dart';

class SplashScreen extends StatefulWidget{

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  List svgStringList = [
      "assets/images/lista_ilustracao.svg",
      "assets/images/create_account_ilustracao.svg",
      "assets/images/reset_password_ilustracao.svg"
    ];

  final String splash = "assets/animations/marketing_strategy_checklist.riv";

  @override
  void initState() {
    super.initState();
    _loadImagesAndNavegateToHome();
  }

  void _loadImagesAndNavegateToHome() async{
    for (String svgPath in svgStringList){
      svg.cache.putIfAbsent(
        SvgAssetLoader(svgPath).cacheKey(null),
        () => SvgAssetLoader(svgPath).loadBytes(null)
      );
    }
    
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