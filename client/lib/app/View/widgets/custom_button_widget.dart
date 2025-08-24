import 'package:flutter/material.dart';

class CustomButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback func;
  final Color bgColor;

  const CustomButtonWidget({
    super.key,
    required this.text,
    required this.func,
    required this.bgColor,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: func,
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(
          bgColor,
        ),
        shape: WidgetStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadiusGeometry.circular(10),
          ),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontFamily: "ComicRelief",
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
    );
  }
}
