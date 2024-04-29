class Match {
  final String id;
  final String team1Id;
  final String team2Id;
  final DateTime scheduledTime;
  final String status; // Planned, Ongoing, Completed

  Match({
    required this.id,
    required this.team1Id,
    required this.team2Id,
    required this.scheduledTime,
    required this.status,
  });

  factory Match.fromJson(Map<String, dynamic> json) {
    return Match(
      id: json['id'],
      team1Id: json['team1Id'],
      team2Id: json['team2Id'],
      scheduledTime: DateTime.parse(json['scheduledTime']),
      status: json['status'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'team1Id': team1Id,
      'team2Id': team2Id,
      'scheduledTime': scheduledTime.toIso8601String(),
      'status': status,
    };
  }
}
