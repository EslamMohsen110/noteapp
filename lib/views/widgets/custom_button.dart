import 'package:flutter/material.dart';
import 'package:noteapp/constants.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    this.isLoading = false,
  });

  final void Function()? onPressed;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: kPrimaryColor,
        ),
        child: isLoading
            ? Container(
                height: 24,
                width: 24,
                child: CircularProgressIndicator(
                  color: Colors.black,
                ))
            : Text(
                'Add',
                style: TextStyle(
                  color: kBlackColor,
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
      ),
    );
  }
}
