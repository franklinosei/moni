class ActiveAgents {
  List<ActiveLoanModel>? activeLoans;

  ActiveAgents({
    this.activeLoans,
  });

  factory ActiveAgents.fromJson(Map<String, dynamic> json) {
    return ActiveAgents(
      activeLoans: json['active_agents'] != null
          ? (json['active_agents'] as List).map((i) {
              return ActiveLoanModel.fromJson(i);
            }).toList()
          : null,
    );
  }
}

class ActiveLoanModel {
  final String agentFirstName;
  final String agentLastName;
  final int daysToDueDate;
  final int loanAmount;
  String? profileImage;

  ActiveLoanModel({
    required this.agentFirstName,
    required this.agentLastName,
    required this.daysToDueDate,
    required this.loanAmount,
    this.profileImage,
  });

  factory ActiveLoanModel.fromJson(Map<String, dynamic> json) {
    DateTime dateTimeCreatedAt = DateTime.parse(
        json['agent']['recent_loan']['agent_loan']['loan_due_date']);
    DateTime dateTimeNow = DateTime.now();
    final differenceInDays = dateTimeNow.difference(dateTimeCreatedAt).inDays;

    return ActiveLoanModel(
      agentFirstName: json['agent']['first_name'],
      agentLastName: json['agent']['last_name'],
      daysToDueDate: differenceInDays,
      loanAmount: json['agent']['recent_loan']['loan_amount'],
      profileImage: json['agent']['media_url'],
    );
  }
}
