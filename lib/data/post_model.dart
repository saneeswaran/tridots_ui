class PostModel {
  final String imagePath;
  final String title;
  final String description;
  final List<String>? hashTags;
  final String category;
  final String postedBy;
  PostModel({
    required this.imagePath,
    required this.title,
    required this.description,
    this.hashTags,
    required this.category,
    required this.postedBy,
  });
}
