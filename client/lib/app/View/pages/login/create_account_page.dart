import 'package:client/app/View/widgets/custom_button_github.dart';
import 'package:client/app/View/widgets/custom_image_text_widget.dart';
import 'package:client/app/View/widgets/login/card_create_account_widget.dart';
import 'package:flutter/material.dart';

class CreateAccountPage extends StatelessWidget{

  const CreateAccountPage({super.key});

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: CustomImageTextWidget(text: "ZEO LIST", image: "assets/images/create_account_ilustracao.svg"),
            ),
            CardCreateAccountWidget(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: CustomButtonGithub(),
            ),
          ],
        ),
      ),
    );
  }
}