import 'package:coffee_shop/colors.dart';
import 'package:flutter/material.dart';

class CustomButtonContainer extends StatelessWidget {
  //final String text;
  final Color color;
  final Widget child;

  CustomButtonContainer({super.key, required this.color, required this.child});
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(25),
            border: Border.all(color: darkBrown, width: 2)),
        child: child);
  }
}
