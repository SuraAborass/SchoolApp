


import 'dart:convert';

import '../Clients/teacher_note_client.dart';
import '../Models/TeacherNote.dart';

class TeacherNotesRepo {
  TeacherNotesClient client = TeacherNotesClient();
  Future<List<TeacherNote>> getTeacherNotes() async {
    var response = await client.getTeacherNotes();
    if (response != "") {
      final data = json.decode(response).cast<Map<String, dynamic>>();
      return data.map<TeacherNote>((json) => TeacherNote.fromMap(json))
          .toList();
    }
    return [];
  }
}