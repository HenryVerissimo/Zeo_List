import 'package:client/app/View/widgets/custom_button_github.dart';
import 'package:client/app/View/widgets/login/card_login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                children: [
                  Center(
                    child: Text(
                      "ZEO LIST",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SvgPicture.asset("assets/images/lista_ilustracao.svg", height: 260),
                ],
              ),
              CardLoginWidget(),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: CustomButtonGithub(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
