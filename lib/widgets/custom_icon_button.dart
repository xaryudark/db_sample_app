import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Function()? buttonLogic;
  final Widget icon;
  final String? buttonText;
  final Color? backgroundColor;
  final Color? textColor;
  const CustomIconButton({
    super.key,
    required this.buttonLogic,
    required this.icon,
    this.buttonText,
    this.backgroundColor,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      width: 300,
      child: ElevatedButton.icon(
        onPressed: buttonLogic,
        icon: icon,
        label: Text(buttonText ?? "", style: TextStyle(color: textColor)),
        style: ButtonStyle(
          backgroundColor: WidgetStatePropertyAll(backgroundColor),
          alignment: Alignment.center,
          iconAlignment: IconAlignment.start,
        ),
      ),
    );
  }
}
