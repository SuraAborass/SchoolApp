
class SubjectClass {
  final String order;
  final String subject;

  SubjectClass({
    required this.order,
    required this.subject
  });

  factory SubjectClass.fromMap(Map<String, dynamic> map) {
    return SubjectClass(
        order: map['order'],
        subject: map['subject']
    );
  }
}