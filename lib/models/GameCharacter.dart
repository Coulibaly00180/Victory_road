class GameCharacter {
  final String id;
  final String name;
  final String type;
  final List<String> techniques;

  GameCharacter({
    required this.id,
    required this.name,
    required this.type,
    required this.techniques,
  });

  factory GameCharacter.fromJson(Map<String, dynamic> json) {
    return GameCharacter(
      id: json['id'],
      name: json['name'],
      type: json['type'],
      techniques: List<String>.from(json['techniques']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'type': type,
      'techniques': techniques,
    };
  }
}
