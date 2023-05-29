import 'package:get/get.dart';
import '../../DataAccessLayer/Models/TeacherNote.dart';
import '../../DataAccessLayer/Repositories/teacher_note_repo.dart';

class TeacherNoteController extends GetxController{
  TeacherNotesRepo repo = TeacherNotesRepo();
  List<TeacherNote> teacherNotes = [];
  var loading = false.obs;

  @override
  void onInit() async {
    await getTeacherNotes();
    super.onInit();
  }

  Future<void> getTeacherNotes() async {
    loading.value = true;
    teacherNotes = await repo.getTeacherNotes();
    update();
    loading.value = false;
  }
}