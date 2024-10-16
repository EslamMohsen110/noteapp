import 'package:bloc/bloc.dart';
import 'package:hive/hive.dart';
import 'package:meta/meta.dart';
import 'package:noteapp/constants.dart';
import 'package:noteapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  NotesCubit() : super(NotesInitial());

  fetchAllNote() async {
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      // List<NoteModel> notes=noteBox.values.toList();
      emit(NotesSuccess(noteBox.values.toList()));
    } catch (e) {
      emit(NotesFailure(e.toString()));
    }
  }
}
