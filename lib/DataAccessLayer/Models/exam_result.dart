
class ExamResult {
  final int id;
  final String date;
  final String subject;
  final String max_score;
  final String min_score;
  final String studentScore;

  ExamResult({
    required this.id,
    required this.date,
    required this.subject,
    required this.max_score,
    required this.min_score,
    required this.studentScore,
  });

  factory ExamResult.fromMap(Map<String, dynamic> map) {
    return ExamResult(
      id: map['id'] as int,
      date: map['date'],
      subject: map['subject'] ,
      max_score:  map['max_score'],
      min_score: map['min_score'],
      studentScore: map['student_score'],
    );
  }
}