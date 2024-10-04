import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.hint,
    this.maxLine = 1,
  });

  final String hint;
  final int maxLine;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: TextField(
        cursorColor: kPrimaryColor,
        maxLines: maxLine,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: const TextStyle(color: kPrimaryColor),
          border: buildBorder(kPrimaryColor),
          enabledBorder: buildBorder(kWhiteColor),
          focusedBorder: buildBorder(kPrimaryColor),
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(9),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
