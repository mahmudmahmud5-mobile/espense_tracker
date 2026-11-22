

class Expense {
  final int? id;
  final String title;
  final double amount;

  Expense({
    this.id,
    required this.title,
    required this.amount,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{
      'title': title,
      'amount': amount,
    };
    if (id != null) {
      map['id'] = id;
    }
    return map;
  }

  factory Expense.fromMap(Map<String, dynamic> map) {
    return Expense(
      id: map['id'] as int?,
      title: map['title'] as String,
      amount: (map['amount'] as num).toDouble(),
    );
  }
}