import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_Text_field.dart';
import 'package:noteapp/views/widgets/custom_button.dart';

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({super.key});

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autoValidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: formKey,
        autovalidateMode: autoValidateMode,
        child: Column(
          children: [
            CustomTextField(
              keyboardType: TextInputType.text,
              onSaved: (value) {
                title = value;
              },
              hint: 'Title',
            ),
            const SizedBox(height: 20),
            CustomTextField(
              keyboardType: TextInputType.text,
              onSaved: (value) {
                subtitle = value;
              },
              hint: 'Content',
              maxLine: 8,
            ),
            const SizedBox(height: 20),
            CustomButton(
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  formKey.currentState!.save();
                } else {
                  autoValidateMode = AutovalidateMode.always;
                  setState(() {});
                }
              },
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
