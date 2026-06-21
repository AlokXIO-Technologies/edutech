import '../models/course.dart';

class CourseRepository {

  static List<Course> getCourses() {

    return [

      Course(
        id: 1,
        title: "Flutter Basics",
        instructor: "Alok Verma",
        duration: "8 Hours",
        description:
        "Build beautiful Android and iOS apps using Flutter.",
        image: "assets/courses/flutter.png",
        validity: "Lifetime Access",
        price: "₹999",
      ),

      Course(
        id: 2,
        title: "Java Masterclass",
        instructor: "Alok Verma",
        duration: "6 Hours",
        description:
        "Master Java programming from fundamentals to advanced concepts.",
        image: "assets/courses/java.png",
        validity: "Lifetime Access",
        price: "₹1499",
      ),

      Course(
        id: 3,
        title: "Spring Boot API",
        instructor: "Alok Verma",
        duration: "10 Hours",
        description:
        "Build production-ready REST APIs using Spring Boot.",
        image: "assets/courses/spring.png",
        validity: "Lifetime Access",
        price: "₹1999",
      ),

      Course(
        id: 4,
        title: "React Fundamentals",
        instructor: "Alok Verma",
        duration: "5 Hours",
        description:
        "Learn modern frontend development with React.",
        image: "assets/courses/react.png",
        validity: "Lifetime Access",
        price: "₹1299",
      ),
    ];
  }
}