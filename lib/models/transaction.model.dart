import 'package:money_manager/models/transaction_type.enum.dart';
import 'package:json_annotation/json_annotation.dart';

import '../utils/uuid.dart';

part 'transaction.model.g.dart';

@JsonSerializable()
class Transaction {
  String id;
  String title;
  double amount;
  TransactionType type;
  DateTime date;

  Transaction(
      {this.id = '',
      required this.title,
      required this.amount,
      required this.type,
      required this.date}) {
    if (id == '') {
      id = UUID.generate();
    }
  }

  factory Transaction.fromJson(Map<String, dynamic> json) => _$TransactionFromJson(json);

  Map<String, dynamic> toJson() => _$TransactionToJson(this);

  @override
  String toString() {
    return 'Transaction{id: $id, title: $title, amount: $amount, type: $type, date: $date}';
  }
}
