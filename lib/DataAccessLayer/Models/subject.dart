import 'homework.dart';

class Subject {
  final int id;
  final String name;
  final String description;
  final int gradeId;
  final List<HomeWork> homeworks;
  Subject({
    required this.id,
    required this.name,
    required this.description,
    required this.gradeId,
    required this.homeworks,
  });

  factory Subject.fromMap(Map<String, dynamic> map) {
    return Subject(
      id: map['id'] as int,
      name: map['name'] as String,
      description: map['description'] as String,
      gradeId: map['grade_id'] as int,
      homeworks: List<HomeWork>.from(
        (map['homework' ] as List<dynamic>).map<HomeWork>(
              (l) => HomeWork.fromMap(l as Map<String, dynamic>),
        ),
      ),
    );
  }
}