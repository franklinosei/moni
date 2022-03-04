class InActiveAgents {
  List<InActiveLoanModel>? activeLoans;

  InActiveAgents({
    this.activeLoans,
  });

  factory InActiveAgents.fromJson(Map<String, dynamic> json) {
    return InActiveAgents(
      activeLoans: json['inactive_agents'] != null
          ? (json['inactive_agents'] as List)
              .map((i) => InActiveLoanModel.fromJson(i))
              .toList()
          : null,
    );
  }
}

class InActiveLoanModel {
  final String agentFirstName;
  final String agentLastName;
  String? profileImage;

  InActiveLoanModel({
    required this.agentFirstName,
    required this.agentLastName,
    this.profileImage,
  });

  factory InActiveLoanModel.fromJson(Map<String, dynamic> json) {
    return InActiveLoanModel(
      agentFirstName: json['agent']['first_name'],
      agentLastName: json['agent']['last_name'],
      profileImage: json['agent']['media_url'],
    );
  }
}
