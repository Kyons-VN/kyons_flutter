class Inventory {
  final int mockTest;
  final double subscription;
  Inventory({required this.mockTest, required this.subscription});
  factory Inventory.empty() => Inventory(mockTest: 0, subscription: 0.0);
}
