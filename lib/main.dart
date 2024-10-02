import 'package:flutter/material.dart';
import 'package:noteapp/views/notes_views.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: NotesViews(),
    );
  }
}
