import 'package:json_annotation/json_annotation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'note.freezed.dart';

part 'note.g.dart';

@freezed
class Note with _$Note {
  factory Note({
    int? id,
    required int timestamp,
    required String title,
    required String content,
    required int color,
  }) = _Note;

  factory Note.fromJson(Map<String, dynamic> json) => _$NoteFromJson(json);
}
