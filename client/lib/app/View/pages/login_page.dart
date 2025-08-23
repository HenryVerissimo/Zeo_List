import 'package:client/app/View/widgets/login/card_login_widget.dart';
import 'package:client/app/View/widgets/custom_logo_projeto_widget.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final Uri urlGitHub = Uri.parse("https://github.com/HenryVerissimo/Zeo_List");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: CustomLogoProjetoWidget(),
            ),
            CardLoginWidget(),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextButton(
                onPressed: _launchUrl,
                child: Text(
                  "Projeto no GITHUB",
                  style: TextStyle(
                    color: const Color.fromARGB(211, 255, 255, 255),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _launchUrl() async {
    if (!await launchUrl(urlGitHub)) {}
  }
}
