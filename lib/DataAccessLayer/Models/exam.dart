
class Exam {
  final int id;
  final String date;
  final String subject;
  final String maximum_score;
  final String minimum_score;
  final String score;

  Exam({
    required this.id,
    required this.date,
    required this.subject,
    required this.maximum_score,
    required this.minimum_score,
    required this.score,
  });

  factory Exam.fromMap(Map<String, dynamic> map) {
    return Exam(
      id: map['id'] as int,
      date: map['date'],
      subject: map['subject'] ,
      maximum_score:  map['maximum_score'],
      minimum_score: map['minimum_score'],
      score: map['score'],
    );
  }
}