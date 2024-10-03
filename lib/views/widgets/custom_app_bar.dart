import 'package:flutter/material.dart';
import 'package:noteapp/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Padding(
      padding: const EdgeInsets.only(right: 20, left: 20, bottom: 10, top: 10),
      child: const Row(
        children: [
          Text(
            'Note',
            style: TextStyle(fontSize: 23),
          ),
          Spacer(),
          CustomSearchIcon()
        ],
      ),
    );
  }
}
