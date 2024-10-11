import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';
import 'package:noteapp/simple_bloc_observer.dart';
import 'package:noteapp/views/notes_views.dart';

/// The first Create init flutter in main.
/// The second Create open Box in main ==> Like collection in fire base ==> this store data (Box) .
/// The third Create register adapter in main from model adapter.

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox<NoteModel>(kNoteBox);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        fontFamily: 'Poppins',
      ),
      home: const NotesViews(),
    );
  }
}
