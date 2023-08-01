import 'class.dart';

class Program {
  final int id;
  final String day;
  final List<SubjectClass> classes;
  Program({
    required this.id,
    required this.day,
    required this.classes,
  });

  factory Program.fromMap(Map<String, dynamic> map) {
    return Program(
      id: map['id'] as int,
      day: map['day'] as String,
      classes: List<SubjectClass>.from(
        (map['classes' ] as List<dynamic>).map<SubjectClass>(
              (l) => SubjectClass.fromMap(l as Map<String, dynamic>),
        ),
      ),
    );
  }
}