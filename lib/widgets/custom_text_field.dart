import 'package:coffee_shop/colors.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  const CustomTextField({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
          labelText: text,
          labelStyle: Theme.of(context)
              .textTheme
              .titleSmall
              ?.copyWith(color: darkBrown),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: darkBrown),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: darkBrown),
          )),
    );
  }
}
