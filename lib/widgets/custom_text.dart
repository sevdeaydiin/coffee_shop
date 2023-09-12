import 'package:flutter/material.dart';

import '../colors.dart';

class CustomText extends StatelessWidget {
  final String text;
  final Color color;
  CustomText({Key? key, required this.text, required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: Theme.of(context).textTheme.titleMedium?.copyWith(
            color: color,
          ),
    );
  }
}
