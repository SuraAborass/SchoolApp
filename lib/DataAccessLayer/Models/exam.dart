import 'exam_result.dart';

class Exam {
  final int id;
  final String name;
  final List<ExamResult> exams;

  Exam({required this.id, required this.name, required this.exams});

  factory Exam.fromMap(Map<String, dynamic> map) {
    return Exam(
      id: map['id'] as int,
      name: map['name'] ?? "",
      exams:   List<ExamResult>.from(
        (map['exams' ] as List<dynamic>).map<ExamResult>(
              (l) => ExamResult.fromMap(l as Map<String, dynamic>),
        ),
      ),
    );
  }

}
