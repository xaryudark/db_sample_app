import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final Function()? buttonLogic;
  final String buttonText;
  final Color? textColor;
  final Color? backgroundColor;
  final double? buttonTextSize;

  const CustomButton({
    super.key,
    required this.buttonLogic,
    required this.buttonText,
    this.textColor,
    this.backgroundColor,
    this.buttonTextSize,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton(
        onPressed: buttonLogic,
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
        ),
        child: Text(
          buttonText,
          style: TextStyle(color: textColor, fontSize: buttonTextSize),
        ),
      ),
    );
  }
}
