import 'dart:convert';

class Student {
  final int id;
  final String image;
  final String firstName;
  final String secondName;
  final String classroom;
  final String grade;
  final String motherName;
  final String brithDate;
  final String nationality;
  Student({
    required this.id,
    required this.firstName,
    required this.secondName,
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
      'first_name' : firstName,
      'second_name': secondName,
      'image': image,
      'classroom': classroom,
      'grade' : grade,
      'mother_name': motherName,
      'brith_date': brithDate,
      'nationality' : nationality
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id']?.toInt() ?? 0,
      firstName: map['first_name'],
      secondName: map['second_name'],
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
