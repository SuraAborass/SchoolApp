
class HomeWork {
  final int id;
  final String title;
  final String description;
  final int classroomId;
  final int subjectId;
  final String subjectImage;
  HomeWork({
    required this.id,
    required this.title,
    required this.description,
    required this.classroomId,
    required this.subjectId,
    required this.subjectImage
  });

  factory HomeWork.fromMap(Map<String, dynamic> map) {
    return HomeWork(
      id: map['id'] as int,
      title: map['title'] as String,
      description: map['description'] as String,
      classroomId: map['classroom_id'] as int,
        subjectId:  map['subject_id'] as int,
        subjectImage: map['subject_image']
    );
  }
}