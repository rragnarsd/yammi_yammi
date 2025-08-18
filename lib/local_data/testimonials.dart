class Testimonial {
  final String title;
  final String review;
  final String name;
  final String role;
  final String avatarUrl;
  final int rating;

  Testimonial({
    required this.title,
    required this.review,
    required this.name,
    required this.role,
    required this.avatarUrl,
    required this.rating,
  });
}

// Sample data
final testimonials = [
  Testimonial(
    title: "I am full",
    review:
        "Well, this cafe was recommended to me by a work colleague. I walked in and away we go. Ordered a burger, bacon, pizza and ate a hot dog.",
    name: "George",
    role: "Guest",
    avatarUrl: "assets/images/5.png",
    rating: 5,
  ),
  Testimonial(
    title: "Designs are beautiful",
    review:
        "The interior of the cafe is amazing. Design at the highest level. Everything I ordered was very tasty.",
    name: "Harper",
    role: "Food critic",
    avatarUrl: "assets/images/6.png",
    rating: 5,
  ),
  Testimonial(
    title: "Tasty food",
    review:
        "Try the burgers at Yammi Yammi. They are divine. Juicy and aromatic. The menu is varied and suits every budget.",
    name: "Maggy",
    role: "Food critic",
    avatarUrl: "assets/images/7.png",
    rating: 5,
  ),
];
