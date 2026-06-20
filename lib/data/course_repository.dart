import '../models/course.dart';

class CourseRepository {

  static List<Course> getCourses() {

    return [
      Course(
        id: 1,
        title: "Flutter Basics",
        instructor: "Alok Verma",
        duration: "8 Hours",
        description: "Learn Flutter from beginner to advanced.",
      ),
      Course(
        id: 2,
        title: "Java Masterclass",
        instructor: "Alok Verma",
        duration: "6 Hours",
        description: "Learn Java from beginner to advanced.",
      ),
      Course(
        id: 3,
        title: "Spring Boot API",
        instructor: "Alok Verma",
        duration: "10 Hours",
        description: "Learn SpringBoot from beginner to advanced.",
      ),
      Course(
        id: 4,
        title: "React Fundamentals",
        instructor: "Alok Verma",
        duration: "5 Hours",
        description: "Learn React from beginner to advanced.",
      ),
    ];
  }
}