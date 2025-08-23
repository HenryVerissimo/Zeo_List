import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomLogoProjetoWidget extends StatelessWidget {
  const CustomLogoProjetoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
        SvgPicture.asset("assets/images/lista_ilustracao.svg", height: 260),
      ],
    );
  }
}
