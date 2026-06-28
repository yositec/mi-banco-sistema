class Account {
  final String accountNumber;
  final double balance;

  Account({required this.accountNumber, required this.balance});

  factory Account.fromJson(Map<String, dynamic> json) {
    return Account(
      accountNumber: json['accountNumber'],
      balance: (json['balance'] as num).toDouble(),
    );
  }
}