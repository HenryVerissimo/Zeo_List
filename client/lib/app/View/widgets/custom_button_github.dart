import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomButtonGithub extends StatelessWidget{
  const CustomButtonGithub({super.key});

  @override
  Widget build(BuildContext context){
    return TextButton(
      onPressed: _launchUrl,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: SvgPicture.asset("assets/icons/github_icon.svg"),
          ),
          Text(
            "Projeto no GITHUB",
            style: TextStyle(
              color: const Color.fromARGB(211, 255, 255, 255),
            ),
          ),
        ],
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