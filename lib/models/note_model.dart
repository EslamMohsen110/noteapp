import 'package:hive/hive.dart';

///How to make generate or to create type adapter ?

/// the first create class of Hive Object in class model extend it.
/// the second create object of type adapter ==> @HiveType(typeId: 0) out class above class.
/// the second create object of type adapter ==> @HiveField(0) in class above attribute.
/// the third we use the line so create generate ==> part 'note_model.g.dart';
part 'note_model.g.dart';

@HiveType(typeId: 0)
class NoteModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subTitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;

  NoteModel({
    required this.title,
    required this.subTitle,
    required this.date,
    required this.color,
  });
}
