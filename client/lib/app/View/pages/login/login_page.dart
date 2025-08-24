import 'package:client/app/View/widgets/custom_button_github.dart';
import 'package:client/app/View/widgets/custom_image_text_widget.dart';
import 'package:client/app/View/widgets/login/card_login_widget.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: CustomImageTextWidget(text: "ZEO LIST", image: "assets/images/lista_ilustracao.svg"),
            ),
            CardLoginWidget(),
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
