
class Complaint {
  final int id;
  //final int studentId;
  final String description;
  final String type;
  final String reply;

  Complaint({
    required this.id,
    //required this.studentId,
    required this.description,
    required this.type,
    required this.reply
  });

  factory Complaint.fromMap(Map<String, dynamic> map) {
    return Complaint(
      id: map['id'] as int,
      //studentId: map['student_id'],
      description: map['description'] ,
      type: map['type'],
      reply: map['reply'] ?? ""
    );
  }
}