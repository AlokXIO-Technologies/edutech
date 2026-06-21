class Course {
  final int id;
  final String title;
  final String instructor;
  final String duration;
  final String description;

  final String image;
  final String validity;
  final String price;

  Course({
    required this.id,
    required this.title,
    required this.instructor,
    required this.duration,
    required this.description,
    required this.image,
    required this.validity,
    required this.price,
  });
}