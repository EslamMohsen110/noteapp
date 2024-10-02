import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Note',
          style: TextStyle(fontSize: 23),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
