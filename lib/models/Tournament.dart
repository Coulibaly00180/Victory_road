class Tournament {
  final String id;
  final String name;
  final String organizerId;  // L'identifiant de l'utilisateur qui organise le tournoi
  final List<String> participantUsernames;  // Les noms des utilisateurs participants
  final DateTime startDate;
  final DateTime endDate;
  final String status;  // Planned, Ongoing, Completed

  Tournament({
    required this.id,
    required this.name,
    required this.organizerId,
    required this.participantUsernames,
    required this.startDate,
    required this.endDate,
    required this.status,
  });

  factory Tournament.fromJson(Map<String, dynamic> json) {
    return Tournament(
      id: json['id'],
      name: json['name'],
      organizerId: json['organizerId'],
      participantUsernames: List<String>.from(json['participantUsernames']),
      startDate: DateTime.parse(json['startDate']),
      endDate: DateTime.parse(json['endDate']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'organizerId': organizerId,
      'participantUsernames': participantUsernames,
      'startDate': startDate.toIso8601String(),
      'endDate': endDate.toIso8601String(),
      'status': status,
    };
  }
}
