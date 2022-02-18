class Post {
  final String id;
  final String userAsset;
  final String asset;
  final String description;
  final int likes;

  Post({
    required this.id,
    required this.userAsset,
    required this.asset,
    required this.description,
    required this.likes,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userAsset: json['user_asset'],
      asset: json['asset'],
      description: json['description'],
      likes: json['likes'],
    );
  }
}
