import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  final Color color;

  const CustomTextButton({super.key, required this.text, required this.color});
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: TextStyle(color: color, fontSize: 17),
        ));
  }
}
