
class ExamResult {
  final int id;
  final String student;
  final String exam;
  final String subject;
  final String maximum_score;
  final String minimum_score;
  final String score;

  ExamResult({
    required this.id,
    required this.student,
    required this.exam,
    required this.subject,
    required this.maximum_score,
    required this.minimum_score,
    required this.score,
  });

  factory ExamResult.fromMap(Map<String, dynamic> map) {
    return ExamResult(
        id: map['id'] as int,
        student: map['student'] as String,
        exam: map['exam'] as String,
        subject: map['subject'] ,
        maximum_score:  map['maximum_score'],
      minimum_score: map['minimum_score'],
        score: map['score'],
    );
  }
}