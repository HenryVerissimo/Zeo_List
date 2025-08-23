import 'package:flutter/material.dart';

class CustomTextbuttonWidget extends StatelessWidget {
  final String text;
  final VoidCallback func;

  const CustomTextbuttonWidget({
    super.key,
    required this.text,
    required this.func,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
          onPressed: func,
          child: Text(
            text,
            style: TextStyle(
              color: const Color.fromARGB(195, 0, 0, 0),
              fontFamily: "ComicRelief",
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Container(
          width: 320,
          height: 2,
          color: const Color.fromARGB(117, 0, 0, 0),
        ),
      ],
    );
  }
}
