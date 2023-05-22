import 'exam.dart';

class ExamResult {
  final int id;
  final String name;
  final List<Exam> exams;

  ExamResult({required this.id, required this.name, required this.exams});

  factory ExamResult.fromMap(Map<String, dynamic> map) {
    return ExamResult(
      id: map['id'] as int,
      name: map['name'] ?? "",
      exams:   List<Exam>.from(
        (map['exams' ] as List<dynamic>).map<Exam>(
              (l) => Exam.fromMap(l as Map<String, dynamic>),
        ),
      ),
    );
  }

}
