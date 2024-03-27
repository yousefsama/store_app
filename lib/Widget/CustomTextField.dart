import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.hintText,
      required this.label,
      required this.isPassword,
      required this.onChange,
      required this.textInputType});
  final String hintText;
  final String label;
  final bool isPassword;
  final Function(String) onChange;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: textInputType,
      onChanged: onChange,
      obscureText: isPassword,
      decoration: InputDecoration(
        label: Text(
          label,
        ),
        hintText: hintText,
        enabledBorder: OutlineInputBorder(
          gapPadding: 50,
          borderRadius: BorderRadius.circular(10),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
