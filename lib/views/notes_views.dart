import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:noteapp/cubit/notes_cubit/notes_cubit.dart';
import 'package:noteapp/views/widgets/add_note_bottom_sheet.dart';
import 'package:noteapp/views/widgets/notes_view_body.dart';

class NotesViews extends StatelessWidget {
  const NotesViews({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => NotesCubit(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            showModalBottomSheet(
              /// if i want change border radius, just the change in here only.
              isScrollControlled: true,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              context: context,
              builder: (context) {
                return const AddNoteBottomSheet();
              },
            );
          },
          child: const Icon(Icons.add),
        ),
        body: const NotesViewBody(),
      ),
    );
  }
}
