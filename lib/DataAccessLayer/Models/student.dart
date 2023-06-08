import 'dart:convert';

class Student {
  final int id;
  final String image;
  final String classroom;
  final String grade;
  final String motherName;
  final String brithDate;
  final String nationality;
  Student({
    required this.id,
    required this.image,
    required this.classroom,
    required this.grade,
    required this.motherName,
    required this.brithDate,
    required this.nationality
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'image': image,
      'name': classroom,
      'grade' : grade,
      'mother_name': motherName,
      'brith_date': brithDate,
      'nationality' : nationality
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['user']['id']?.toInt() ?? 0,
      image: map['user']['image'] ?? '',
      classroom: map['user']['name'] ?? '',
      grade: map['user']['grade'] ?? '',
      motherName: map['user']['mother_name'] ?? '',
      brithDate: map['user']['brith_date'] ?? '',
        nationality: map['user']['nationality']
    );
  }
  factory Student.fromBoxMap(Map<String, dynamic> map) {
    return Student(
      id: map['id']?.toInt() ?? 0,
      image: map['image'] ?? '',
      classroom: map['classroom'] ?? '',
      grade: map['grade'] ?? '',
      motherName: map['mother_name'] ?? '',
      brithDate: map['brith_date'] ?? '',
        nationality: map['nationality']
    );
  }
  String toJson() => json.encode(toMap());
  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source) as Map<String, dynamic>);
}
