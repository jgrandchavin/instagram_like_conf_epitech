class Story {
  final String userAsset;
  final String name;

  Story({
    required this.userAsset,
    required this.name,
  });

  factory Story.fromJson(Map<String, dynamic> json) {
    return Story(userAsset: json['user_asset'], name: json['id']);
  }
}
