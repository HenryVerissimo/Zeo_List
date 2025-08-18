import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(30, 30, 30, 1),
      body: ListView(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "ZEO LIST",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(
                      height: 345,
                      child: SvgPicture.asset(
                        "assets/images/lista_ilustracao.svg",
                        fit: BoxFit.cover,
                        alignment: Alignment.center,
                      ),
                    ),
                    Container(
                      width: 350,
                      height: 300,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color.fromRGBO(244, 244, 244, 1),
                      ),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: [
                          Positioned(
                            top: 50,
                            left: 10,
                            child: Column(
                              children: [
                                Text(
                                  "Email:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 31),
                                Text(
                                  "Senha:",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 48,
                              left: 55,
                              right: 15,
                            ),
                            child: Column(
                              children: [
                                TextField(
                                  style: TextStyle(color: Colors.black),
                                  cursorColor: Colors.black,
                                  decoration: null,
                                ),
                                SizedBox(height: 28),
                                TextField(
                                  style: TextStyle(color: Colors.black),
                                  cursorColor: Colors.black,
                                  decoration: null,
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 125,
                            child: Column(
                              children: [
                                ElevatedButton(
                                  onPressed: null,
                                  style: ButtonStyle(
                                    backgroundColor: WidgetStateProperty.all(
                                      Color.fromRGBO(64, 123, 255, 1),
                                    ),
                                    foregroundColor: WidgetStateProperty.all(
                                      Colors.white,
                                    ),
                                    fixedSize: WidgetStateProperty.all(
                                      Size(134, 39),
                                    ),
                                    shape:
                                        WidgetStateProperty.all<
                                          RoundedRectangleBorder
                                        >(
                                          RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadiusGeometry.circular(
                                                  5,
                                                ),
                                          ),
                                        ),
                                  ),
                                  child: Text("LOGIN"),
                                ),
                                SizedBox(height: 19),
                                TextButton(
                                  onPressed: null,
                                  child: Text(
                                    "Criar uma nova conta",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                                SizedBox(height: 4),
                                TextButton(
                                  onPressed: null,
                                  child: Text(
                                    "Esqueci minha senha",
                                    style: TextStyle(color: Colors.black),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 70,
                            child: Column(
                              children: [
                                Container(
                                  width: 330,
                                  height: 2,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 50),
                                Container(
                                  width: 330,
                                  height: 2,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 50),
                                Container(
                                  width: 330,
                                  height: 2,
                                  color: const Color.fromARGB(117, 0, 0, 0),
                                ),
                                SizedBox(height: 50),
                                Container(
                                  width: 330,
                                  height: 2,
                                  color: const Color.fromARGB(117, 0, 0, 0),
                                ),
                                SizedBox(height: 50),
                                Container(
                                  width: 330,
                                  height: 2,
                                  color: const Color.fromARGB(117, 0, 0, 0),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 50,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "Sobre o projeto",
                          style: TextStyle(
                            color: const Color.fromARGB(237, 255, 255, 255),
                          ),
                        ),
                      ],
                    ),
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
