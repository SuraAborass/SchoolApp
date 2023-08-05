import 'dart:convert';

class Student {
  final int id;
  final String image;
  final String firstName;
  final String secondName;
  final String classroom;
  final String grade;
  final String motherName;
  final String fatherName;
  final String brithDate;
  final String nationality;
  final String payType;
  final String gender;
  Student({
    required this.id,
    required this.firstName,
    required this.secondName,
    required this.image,
    required this.classroom,
    required this.grade,
    required this.motherName,
    required this.fatherName,
    required this.brithDate,
    required this.nationality,
    required this.payType,
    required this.gender,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'first_name' : firstName,
      'second_name': secondName,
      'image': image,
      'classroom': classroom,
      'grade_id' : grade,
      'mother_name': motherName,
      'father_name' : fatherName,
      'brith_date': brithDate,
      'nationality' : nationality,
      'pay_type' : payType,
      'gender' : gender
    };
  }

  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      id: map['id']?.toInt() ?? 0,
      firstName: map['first_name'],
      secondName: map['second_name'],
      image: map['image'] ?? '',
      classroom: map['classroom'] ?? '',
      grade: map['grade_id'] ?? '',
      motherName: map['mother_name'] ?? '',
      fatherName: map['father_name'] ?? '',
      brithDate: map['brith_date'] ?? '',
        nationality: map['nationality'],
      payType: map['pay_type'] ?? '' ,
      gender:  map['gender'] ?? ''
    );
  }

  String toJson() => json.encode(toMap());
  factory Student.fromJson(String source) =>
      Student.fromMap(json.decode(source) as Map<String, dynamic>);
}
