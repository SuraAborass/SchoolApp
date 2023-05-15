
class Alert {
  final int id;
  final String teacher;
  final String subject;
  final String text;
  final String type;

  Alert({
    required this.id,
    required this.teacher,
    required this.subject,
    required this.text,
    required this.type
  });

  factory Alert.fromMap(Map<String, dynamic> map) {
    return Alert(
        id: map['id'] as int,
        teacher: map['teacher'] ,
        subject: map['subject'] ,
        text: map['text'] ,
        type: map['type'],
    );
  }
}