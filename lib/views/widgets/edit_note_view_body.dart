import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_Text_field.dart';
import 'package:noteapp/views/widgets/custom_app_bar.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Column(
        children: [
          CustomAppBar(
            title: 'Edit Note',
            icon: Icons.check,
          ),
          CustomTextField(hint: 'hint'),
          SizedBox(
            height: 10,
          ),
          CustomTextField(hint: 'Content', maxLine: 10),
        ],
      ),
    );
  }
}
