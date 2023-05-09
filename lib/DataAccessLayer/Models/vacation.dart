
class Vacation {
  final int id;
  final String title;
  final String date;
  Vacation({
    required this.id,
    required this.title,
    required this.date,

  });

  factory Vacation.fromMap(Map<String, dynamic> map) {
    return Vacation(
        id: map['id'] as int,
        title: map['title'] as String,
      date: map['date'] as String,
    );
  }
}