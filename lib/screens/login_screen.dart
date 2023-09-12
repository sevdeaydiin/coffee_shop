import 'package:coffee_shop/widgets/custom_button_container.dart';
import 'package:coffee_shop/widgets/custom_text.dart';
import 'package:coffee_shop/widgets/custom_text_button.dart';
import 'package:coffee_shop/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import '../colors.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        fit: StackFit.expand,
        children: [
          Image.asset(
            'assets/images/background.png',
            fit: BoxFit.cover,
          ),
          Positioned(
            top: size.height * 0.43,
            left: size.width * 0.1,
            right: size.width * 0.1,
            child: const MyContainer(),
          ),
        ],
      ),
    );
  }
}

class MyContainer extends StatelessWidget {
  final String login = 'Login';
  final String createAccount = 'Create Account';
  final String forgotP = 'Forgot your password?';
  const MyContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text(
          'Welcome\nBack',
          style: Theme.of(context)
              .textTheme
              .displaySmall
              ?.copyWith(fontWeight: FontWeight.bold, color: darkBrown),
        ),
        SizedBox(
          height: size.height * 0.01,
        ),
        //CustomText(text: 'Email'),
        const CustomTextField(text: 'Email'),
        SizedBox(
          height: size.height * 0.01,
        ),
        //CustomText(text: 'Password'),
        const CustomTextField(text: 'Password'),
        SizedBox(
          height: size.height * 0.03,
        ),
        //login button
        CustomButtonContainer(
            color: darkBrown,
            child: CustomTextButton(text: login, color: background)),
        SizedBox(
          height: size.height * 0.015,
        ),
        //create account button
        CustomButtonContainer(
            color: background,
            child: CustomTextButton(text: createAccount, color: darkBrown)),
        SizedBox(
          height: size.height * 0.02,
        ),
        CustomTextButton(text: forgotP, color: darkBrown),
      ],
    );
  }
}
