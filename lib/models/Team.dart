class Team {
  final String id;
  final String name;
  final String createdByUserId;  // L'identifiant de l'utilisateur qui a créé l'équipe
  final List<String> memberIds;  // IDs des personnages du jeu dans l'équipe

  Team({
    required this.id,
    required this.name,
    required this.createdByUserId,
    required this.memberIds,
  });

  factory Team.fromJson(Map<String, dynamic> json) {
    return Team(
      id: json['id'],
      name: json['name'],
      createdByUserId: json['createdByUserId'],
      memberIds: List<String>.from(json['memberIds']),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'createdByUserId': createdByUserId,
      'memberIds': memberIds,
    };
  }
}
