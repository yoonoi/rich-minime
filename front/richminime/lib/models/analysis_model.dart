class SpendingData {
  int? month;
  List<SpendingAmount>? spendingAmountList;
  int? totalAmount;

  SpendingData({this.month, this.spendingAmountList, this.totalAmount});

  SpendingData.fromJson(Map<String, dynamic> json) {
    month = json['month'];
    if (json['spendingAmountList'] != null) {
      spendingAmountList = [];
      json['spendingAmountList'].forEach((v) {
        spendingAmountList!.add(SpendingAmount.fromJson(v));
      });
    }
    totalAmount = json['totalAmount'];
  }
}

class SpendingAmount {
  String? category;
  int? amount;

  SpendingAmount({this.category, this.amount});

  SpendingAmount.fromJson(Map<String, dynamic> json) {
    category = json['category'];
    amount = json['amount'];
  }
}
