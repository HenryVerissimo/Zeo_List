import 'package:client/app/View/widgets/custom_image_text_widget.dart';
import 'package:client/app/View/widgets/login/card_create_account_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:url_launcher/url_launcher.dart';

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
    await dotenv.load(fileName: ".env");
    String githubUrl = dotenv.env["URL_GITHUB"] ?? "";
    Uri uri = Uri.parse(githubUrl);

    if (!await launchUrl(uri)) {}
  }
}