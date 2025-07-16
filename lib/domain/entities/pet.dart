class Pet {
  final String id;
  final String name;
  final String category;
  final String imageUrl;
  final String description;
  final int age;
  final String gender;
  final String location;
  final List<String> gallery;

  Pet({
    required this.id,
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.description,
    required this.age,
    required this.gender,
    required this.location,
    required this.gallery,
  });
}
