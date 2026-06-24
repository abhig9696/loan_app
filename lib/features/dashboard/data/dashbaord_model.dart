import '../domain/dashboard_entity.dart';

class DashboardModel extends DashboardEntity {
  DashboardModel({
    required super.userName,
    required super.creditScore,
    required super.loanAmount,
    required super.income,
    required super.expense,
  });

  factory DashboardModel.fromJson(
      Map<String, dynamic> json,
      ) {
    return DashboardModel(
      userName: json["userName"],
      creditScore: json["creditScore"],
      loanAmount:
      json["loanAmount"].toDouble(),
      income:
      json["income"].toDouble(),
      expense:
      json["expense"].toDouble(),
    );
  }
}