import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:hive/hive.dart';
import 'package:money_manager/models/transaction_type.enum.dart';
import 'package:money_manager/widgets/home/stats/stats.dart';
import 'package:money_manager/widgets/shared/transaction/transaction_list.dart';

import '../../models/transaction.model.dart';
import 'home_navigation_bar.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return HomeState();
  }
}

class HomeState extends State<Home> {
  double _totalAmount = 0;
  List<Transaction> _transactionList = [];
  late Box _totalAmountBox;
  late Box _transactionBox;

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() async {
    _totalAmountBox = await Hive.openBox('totalSpend');
    _transactionBox = await Hive.openBox('transactions');
    _totalAmount = _totalAmountBox.get('value') ?? 0;
    _populateTransaction();
    _transactionList = _transactionBox.values
        .map((e) => Transaction.fromJson(Map<String, dynamic>.from(e)))
        .toList();
    _transactionList.sort((a, b) => b.date.compareTo(a.date));
    if (kDebugMode) {
      print(_transactionList.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTabView(
      builder: (BuildContext context) {
        return CupertinoPageScaffold(
            child: CustomScrollView(
                physics: const NeverScrollableScrollPhysics(),
                slivers: [
              MainNavigationBar(totalSpend: _totalAmount),
              const Stats(),
              const TransactionList(),
            ]));
      },
    );
  }

  void _populateTransaction() {
    if (_transactionBox.values.isEmpty) {
      Transaction t1 = Transaction(
          title: 'Sushi',
          amount: 18.50,
          type: TransactionType.expense,
          date: DateTime.now());
      _transactionBox.put(t1.id, t1.toJson());
      Transaction t2 = Transaction(
          title: 'MacBook Pro',
          amount: 3192.98,
          type: TransactionType.expense,
          date: DateTime.now());
      _transactionBox.put(t2.id, t2.toJson());
      Transaction t3 = Transaction(
          title: 'Stipendio',
          amount: 5234.23,
          type: TransactionType.income,
          date: DateTime.now());
      _transactionBox.put(t3.id, t3.toJson());
    }
  }

// void onPress() {
//   AutoRouter.of(context).push(const TransactionSectionRoute());
// }
}
