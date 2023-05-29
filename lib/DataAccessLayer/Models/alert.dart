
class Alert {
  final int id;
  final String title;
  final String description;
  final String type;

  Alert({
    required this.id,
    required this.title,
    required this.description,
    required this.type
  });

  factory Alert.fromMap(Map<String, dynamic> map) {
    return Alert(
        id: map['id'] as int,
        title: map['title'] ,
       description: map['description'],
        type: map['type'],
    );
  }
}