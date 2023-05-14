
class StudentTime {
  final int id;
  final String status;
  final String date;
  final String description;

  StudentTime({
    required this.id,
    required this.status,
    required this.date,
    required this.description
  });

  factory StudentTime.fromMap(Map<String, dynamic> map) {
    return StudentTime(
      id: map['id'] as int,
      status: map['status'] ,
      date: map['date'] ,
      description: map['description']
    );
  }
}