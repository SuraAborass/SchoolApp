
class HomeWork {
  final int id;
  final String title;
  final String description;
  final int classroomId;
  HomeWork({
    required this.id,
    required this.title,
    required this.description,
    required this.classroomId
  });

  factory HomeWork.fromMap(Map<String, dynamic> map) {
    return HomeWork(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      classroomId: map['classroom_id'] as int
    );
  }
}