import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final Widget? suffixIcon;
  final Function(String)? onChanged;
  final EdgeInsetsGeometry? contentPadding;

  CustomTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.suffixIcon,
    this.onChanged,
    this.contentPadding =
        const EdgeInsets.all( 10),
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        contentPadding: contentPadding,
        filled: true,
        fillColor: Color.fromARGB(121, 221, 221, 221),
        border: OutlineInputBorder(),
        hintText: hintText,
        suffixIcon: suffixIcon != null ? suffixIcon : null,
        labelStyle: TextStyle(
          fontSize: 15,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(190, 17, 25, 29),
        ),
        hintStyle: TextStyle(
          fontSize: 16,
          fontStyle: FontStyle.italic,
          color: Color.fromARGB(222, 115, 115, 115),
        ),
      ),
      onChanged: onChanged,
      style: TextStyle(fontSize: 18, letterSpacing: 1.2),
    );
  }
}
