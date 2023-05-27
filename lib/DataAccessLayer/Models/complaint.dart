
class Complaint {
  final int id;
  final String userId;
  final String description;
  final String type;
  final String reply;

  Complaint({
    required this.id,
    required this.userId,
    required this.description,
    required this.type,
    required this.reply
  });

  factory Complaint.fromMap(Map<String, dynamic> map) {
    return Complaint(
      id: map['id'] as int,
      userId: map['user_id'],
      description: map['description'] ,
      type: map['type'],
      reply: map['reply']
    );
  }
}