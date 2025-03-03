import 'package:db_sample/utilities/colors.dart';
import 'package:flutter/material.dart';

class CardListElement extends StatelessWidget {
  final String firstText;
  final String secondText;
  final String thirdText;
  final String date;
  final String time;
  final Color? backgroundColor;
  final Color? textColor;
  final double? textSizeName;
  final double? textSizeDate;

  const CardListElement({
    super.key,
    required this.firstText,
    required this.secondText,
    required this.thirdText,
    required this.date,
    required this.time,
    this.backgroundColor,
    this.textColor,
    this.textSizeName,
    this.textSizeDate,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: backgroundColor ?? oColor3,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 20),
                Text(
                  firstText,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: textSizeName ?? 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(width: 10),
                Text(
                  secondText,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: textSizeName ?? 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  thirdText,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: textSizeDate ?? 16,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  date,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: textSizeDate ?? 16,
                  ),
                ),
                Text(
                  time,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: textSizeDate ?? 16,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
