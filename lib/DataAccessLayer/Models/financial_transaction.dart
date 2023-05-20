
class FinancialTransaction {
  final int id;
  final String statement;
  final String type;
  final int amount;

  FinancialTransaction({
    required this.id,
    required this.statement,
    required this.type,
    required this.amount,

  });

  factory FinancialTransaction.fromMap(Map<String, dynamic> map) {
    return FinancialTransaction(
        id: map['id'] as int,
        statement: map['statement'] as String,
        type: map['type'] as String,
        amount: map['amount'] as int,
    );
  }
}