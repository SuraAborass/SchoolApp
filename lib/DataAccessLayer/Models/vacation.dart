
class Vacation {
  final int id;
  final String title;
  final String day;
  final String month;

  Vacation({
    required this.id,
    required this.title,
    required this.day,
    required this.month
  });

  factory Vacation.fromMap(Map<String, dynamic> map) {
    return Vacation(
        id: map['id'] as int,
        title: map['title'],
      day: map['day'],
      month: map['month']
    );
  }
}