class User {
  final String name;
  final String profession;
  final String bio;
  final String email;
  final String phone;
  final String location;
  final String imagePath;

  User({
    required this.name,
    required this.profession,
    required this.bio,
    required this.email,
    required this.phone,
    required this.location,
    required this.imagePath,
  });
}

final userData = User(
  name: "Rifat Hussain",
  profession: "Flutter Developer",
  bio: "I love building creative mobile apps and learning new technologies.",
  email: "rifat@example.com",
  phone: "+92 300 1234567",
  location: "Gilgit, Pakistan",
  imagePath: "assets/profile.jpg",
);
