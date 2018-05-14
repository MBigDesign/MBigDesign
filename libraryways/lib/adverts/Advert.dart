class Advert {
  final String id;
  final String bookName;
  final String location;
  final String distance;
  final String description;
  final String price;
  final String image;

  const Advert(
      {this.id, this.bookName, this.location, this.distance, this.description, this.price, this.image});

}

  //List of temp adverts for demonstration

  List<Advert> adverts = [
    const Advert(
      id: "1",
      bookName: "Algorithms 4th Ed",
      location: "Stellenbosch",
      distance: "23.2 km",
      description: "Algorithms, 4th Edition by Robert Sedgewick and Kevin Wayne surveys the most important algorithms and data structures in use today. We motivate each algorithm that we address by examining its impact on applications to science, engineering, and industry.",
      price: "R650",
      image: "assets/img/covers/algorithms.png"
    ),

    const Advert(
        id: "2",
        bookName: "Calculus",
        location: "Cape Town",
        distance: "90.4 km",
        description: "With Calculus (Seventh Edition), Stewart conveys not only the utility of calculus to help you develop technical competence, but also gives you an appreciation for the intrinsic beauty of the subject. His patient examples and built-in learning aids will help you build your mathematical confidence and achieve your goals in the course!",
        price: "R1000",
        image: "assets/img/covers/calculus.jpg"
    ),

    const Advert(
        id: "3",
        bookName: "Linear Algebra",
        location: "Stellenbosch",
        distance: "8.3 km",
        description: "David Poole's innovative book prepares students to make the transition from the computational aspects of the course to the theoretical by emphasizing vectors and geometric intuition from the start. Designed for a one- or two-semester introductory course and written in simple, 'mathematical English' the book presents interesting examples before abstraction. This immediately follows up theoretical discussion with further examples and a variety of applications drawn from a number of disciplines, which reinforces the practical utility of the math, and helps students from a variety of backgrounds and learning styles stay connected to the concepts they are learning. Poole's approach helps students succeed in this course by learning vectors and vector geometry first in order to visualize and understand the meaning of the calculations that they will encounter and develop mathematical maturity for thinking abstractly.",
        price: "R500",
        image: "assets/img/covers/linearAlgebra.jpg"
    ),

    const Advert(
        id: "4",
        bookName: "Algorithms 4th Ed",
        location: "Stellenbosch",
        distance: "23.2 km",
        description: "Algorithms, 4th Edition by Robert Sedgewick and Kevin Wayne surveys the most important algorithms and data structures in use today. We motivate each algorithm that we address by examining its impact on applications to science, engineering, and industry.",
        price: "R650",
        image: "assets/img/covers/algorithms.png"
    ),

    const Advert(
        id: "5",
        bookName: "Calculus",
        location: "Cape Town",
        distance: "90.4 km",
        description: "With Calculus (Seventh Edition), Stewart conveys not only the utility of calculus to help you develop technical competence, but also gives you an appreciation for the intrinsic beauty of the subject. His patient examples and built-in learning aids will help you build your mathematical confidence and achieve your goals in the course!",
        price: "R1000",
        image: "assets/img/covers/calculus.jpg"
    ),

    const Advert(
        id: "6",
        bookName: "Linear Algebra",
        location: "Stellenbosch",
        distance: "8.3 km",
        description: "David Poole's innovative book prepares students to make the transition from the computational aspects of the course to the theoretical by emphasizing vectors and geometric intuition from the start. Designed for a one- or two-semester introductory course and written in simple, 'mathematical English' the book presents interesting examples before abstraction. This immediately follows up theoretical discussion with further examples and a variety of applications drawn from a number of disciplines, which reinforces the practical utility of the math, and helps students from a variety of backgrounds and learning styles stay connected to the concepts they are learning. Poole's approach helps students succeed in this course by learning vectors and vector geometry first in order to visualize and understand the meaning of the calculations that they will encounter and develop mathematical maturity for thinking abstractly.",
        price: "R500",
        image: "assets/img/covers/linearAlgebra.jpg"
    ),

  ];