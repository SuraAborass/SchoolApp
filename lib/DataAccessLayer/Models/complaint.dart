
class Complaint {
  final int id;
  final String description;
  final String type;
  final String reply;

  Complaint({
    required this.id,
    required this.description,
    required this.type,
    required this.reply
  });

  factory Complaint.fromMap(Map<String, dynamic> map) {
    return Complaint(
      id: map['id'] as int,
      description: map['description'] ,
      type: map['type'],
      reply: map['reply']
    );
  }
}