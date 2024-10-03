class MyPost {
  const MyPost({
    required this.userId,
    required this.id,
    required this.title,
    required this.body,
    required this.image,
  });

  final int userId;
  final int id;
  final String title;
  final String body;
  final String image;

  factory MyPost.fromJson(Map<String, dynamic> json) {
    return MyPost(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      body: json['body'],
      image: '', // Make sure the API returns an 'image' field
    );
  }
}