import 'package:client/app/View/widgets/custom_button_widget.dart';
import 'package:client/app/View/widgets/login/textbutton_login_widget.dart';
import 'package:client/app/View/widgets/login/textfield_login_widget.dart';
import 'package:flutter/material.dart';

class CardCreateAccountWidget extends StatelessWidget {
  const CardCreateAccountWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350,
      height: 300,
      decoration: BoxDecoration(
        color: Color.fromRGBO(244, 244, 244, 1),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.only(
          top: 30,
          right: 15,
          left: 15,
          bottom: 10,
        ),
        child: Column(
          children: [
            TextfieldWidgetLogin(text: "Nome", obscureText: false),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextfieldWidgetLogin(text: "Email", obscureText: true),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextfieldWidgetLogin(text: "Senha", obscureText: true),
            ),
            SizedBox(
              width: 320,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: CustomButtonWidget(
                  text: "CRIAR CONTA",
                  func: () {},
                  bgColor: Theme.of(context).primaryColor,
                ),
              ),
            ),
            Container(
              width: 320,
              height: 2,
              color: const Color.fromARGB(117, 0, 0, 0),
            ),
            CustomTextbuttonWidget(
              text: "Já tem uma conta? Faça login",
              func: () {
                Navigator.pushReplacementNamed(context, "/");
              },
            ),
          ],
        ),
      ),
    );
  }
}
