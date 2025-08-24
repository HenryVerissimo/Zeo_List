import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomImageTextWidget extends StatelessWidget {
  final String text;
  final String image;

  const CustomImageTextWidget({super.key, required this.text, required this.image});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SvgPicture.asset(image, height: 260),
      ],
    );
  }
}
