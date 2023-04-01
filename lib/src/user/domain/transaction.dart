class Transaction {
  final String id;
  final String packageName;
  final double amount;
  final int quantity;
  final DateTime createdAt;

  Transaction({
    required this.id,
    required this.packageName,
    required this.amount,
    required this.quantity,
    required this.createdAt,
  });

  factory Transaction.empty() => Transaction(
        id: '',
        packageName: '',
        amount: 0,
        quantity: 0,
        createdAt: DateTime.now(),
      );
}
