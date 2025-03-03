import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class CustomInputField extends StatelessWidget {
  final TextEditingController controller;
  final String? hintText;
  final bool? obscureText;
  final int? maxLength;
  final TextInputType? keyboardType;
  final bool? readOnly;
  final VoidCallback? onTap;
  final double? width;
  final double? height;
  final Color? textColor;
  final TextAlign? textAlign;
  final int? maxLines;
  const CustomInputField({
    super.key,
    required this.controller,
    this.hintText,
    this.obscureText,
    this.maxLength,
    this.keyboardType,
    this.readOnly,
    this.onTap,
    this.height,
    this.width,
    this.textColor,
    this.textAlign,
    this.maxLines,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: height ?? 50,
      width: width ?? 300,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: TextFormField(
          controller: controller,
          style: TextStyle(color: textColor),
          readOnly: readOnly ?? false,
          maxLines: maxLines ?? 1,
          onTap: onTap,
          keyboardType: keyboardType,
          inputFormatters: [LengthLimitingTextInputFormatter(maxLength)],
          textAlign: textAlign ?? TextAlign.center,
          obscureText: obscureText ?? false,
          autocorrect: false,
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
