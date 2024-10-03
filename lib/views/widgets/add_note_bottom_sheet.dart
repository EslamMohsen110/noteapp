import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_Text_field.dart';
import 'package:noteapp/views/widgets/custom_button.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(left: 10, right: 10, top: 40),
      child: SingleChildScrollView(
        child: Column(
          children: [
            CustomTextField(hint: 'Title'),
            SizedBox(height: 20),
            CustomTextField(
              hint: 'Content',
              maxLine: 8,
            ),
            SizedBox(height: 20),
            CustomButton(),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
