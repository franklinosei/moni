class ClusterModel {
  double? repaymentRate;
  String? repaymentDay;
  int? clusterPurseBalance;
  // int? interestEarnedToday;
  int? totalInterestEarned;
  int? totalOwnedByMembers;
  String? clusterName;

  ClusterModel({
    this.repaymentRate,
    this.repaymentDay,
    this.clusterPurseBalance,
    // this.interestEarnedToday,
    this.totalInterestEarned,
    this.totalOwnedByMembers,
    this.clusterName,
  });

  factory ClusterModel.fromJson(Map<String, dynamic> json) {
    return ClusterModel(
      repaymentRate: json['cluster_repayment_rate'] * 100,
      repaymentDay: json['cluster_repayment_day'],
      clusterPurseBalance: json['cluster_purse_balance'],
      // interestEarnedToday: json['interestEarnedToday'],
      totalInterestEarned: json['total_interest_earned'],
      totalOwnedByMembers: json['total_owed_by_members'],
      clusterName: json['cluster_name'],
    );
  }
}
