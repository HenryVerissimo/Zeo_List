import 'package:client/app/View/widgets/custom_button_widget.dart';
import 'package:client/app/View/widgets/login/textbutton_login_widget.dart';
import 'package:client/app/View/widgets/login/textfield_login_widget.dart';
import 'package:flutter/material.dart';

class CardResetPasswordWidget extends StatelessWidget{
  const CardResetPasswordWidget({super.key});

  @override
  Widget build(BuildContext context){
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
            TextfieldWidgetLogin(text: "Email", obscureText: false),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: TextfieldWidgetLogin(text: "Código", obscureText: true),
            ),
            SizedBox(
              width: 320,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: CustomButtonWidget(
                  text: "REENVIAR EMAIL",
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
            SizedBox(
              width: 320,
              child: Padding(
                padding: const EdgeInsets.only(top: 2, bottom: 2),
                child: CustomButtonWidget(
                  text: "CONFIRMAR CÓDIGO",
                  func: () {},
                  bgColor: Colors.green,
                ),
              ),
            ),
            Container(
              width: 320,
              height: 2,
              color: const Color.fromARGB(117, 0, 0, 0),
            ),
            CustomTextbuttonWidget(
              text: "Voltar para o login",
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