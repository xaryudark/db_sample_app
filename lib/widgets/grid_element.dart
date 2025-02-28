import 'package:db_sample/utilities/colors.dart';
import 'package:flutter/material.dart';

class GridElement extends StatelessWidget {
  final VoidCallback buttonLogic;
  final Widget icon;
  final Color? backgroundColor;
  final String? buttonText;
  final Color? textColor;
  const GridElement({
    super.key,
    required this.buttonLogic,
    required this.icon,
    this.backgroundColor,
    this.buttonText,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: buttonLogic,
      highlightColor: oColor2,
      splashColor: oColor2,
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            icon,
            SizedBox(height: 5),
            if (buttonText != null)
              Text(
                buttonText!,
                style: TextStyle(color: textColor ?? Colors.white),
              ),
          ],
        ),
      ),
    );
  }
}
