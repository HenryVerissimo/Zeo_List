import 'package:client/app/View/pages/loading/splash_screen.dart';
import 'package:client/app/View/pages/login/create_account_page.dart';
import 'package:client/app/View/pages/login/login_page.dart';
import 'package:client/app/View/pages/login/reset_password_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

main(){

  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(64, 123, 255, 1),
        scaffoldBackgroundColor: Color.fromRGBO(30, 30, 30, 1),
      ),
      routes: {
        "/": (context) => LoginPage(),
        "/create_account": (context) => CreateAccountPage(),
        "/reset_password": (context) => ResetPasswordPage(),
        "/splash_screen": (context) => SplashScreen(),
      },
      initialRoute: "/splash_screen",
    );
  }
}