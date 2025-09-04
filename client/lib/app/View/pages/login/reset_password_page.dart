import 'package:client/app/View/widgets/custom_button_github.dart';
import 'package:client/app/View/widgets/login/card_reset_password_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ResetPasswordPage extends StatelessWidget{
  const ResetPasswordPage({super.key});

  @override
  Widget build(BuildContext context){
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
                  SvgPicture.asset("assets/images/reset_password_ilustracao.svg", height: 260,),
                ],
              ),
              CardResetPasswordWidget(),
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