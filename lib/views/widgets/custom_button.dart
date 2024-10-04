import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        child: const Text(
          'Add',
          style: TextStyle(
              color: kBlackColor, fontWeight: FontWeight.bold, fontSize: 16),
        ),
      ),
    );
  }
}
