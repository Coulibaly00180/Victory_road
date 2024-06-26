class Post {
  final String id;
  final String userId;
  final String content;
  final DateTime timestamp;

  Post({
    required this.id,
    required this.userId,
    required this.content,
    required this.timestamp,
  });

  factory Post.fromJson(Map<String, dynamic> json) {
    return Post(
      id: json['id'],
      userId: json['userId'],
      content: json['content'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'userId': userId,
      'content': content,
      'timestamp': timestamp.toIso8601String(),
    };
  }
}
