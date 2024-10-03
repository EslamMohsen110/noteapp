import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_Text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          CustomTextField(hint: 'Title'),
          SizedBox(height: 30),
          CustomTextField(
            hint: 'Content',
            maxLine: 8,
          ),
        ],
      ),
    );
  }
}
