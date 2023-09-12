import 'package:flutter/material.dart';

import '../colors.dart';

class CustomTextBold extends StatelessWidget {
  final String text;
  CustomTextBold({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context)
          .textTheme
          .titleMedium
          ?.copyWith(fontWeight: FontWeight.bold, color: darkBrown),
    );
  }
}
