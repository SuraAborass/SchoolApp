
class Installment {
  final int id;
  final String statement;
  final String type;
  final int amount;

  Installment({
    required this.id,
    required this.statement,
    required this.type,
    required this.amount,

  });

  factory Installment.fromMap(Map<String, dynamic> map) {
    return Installment(
        id: map['id'] as int,
        statement: map['statement'] ,
        type: map['type'] ,
        amount: map['amount'],
    );
  }
}