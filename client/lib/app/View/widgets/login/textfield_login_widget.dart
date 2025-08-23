import 'package:flutter/material.dart';

class TextfieldWidgetLogin extends StatelessWidget {
  final String text;
  final bool obscureText;

  const TextfieldWidgetLogin({
    super.key,
    required this.text,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Expanded(
              flex: 2,
              child: Text(
                "$text:",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "ComicRelief",
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              width: 260,
              child: TextField(
                obscureText: obscureText,
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "ComicRelief",
                ),
                cursorColor: Colors.black,
                decoration: null,
              ),
            ),
          ],
        ),
        Container(width: 320, height: 2, color: Colors.black),
      ],
    );
  }
}
