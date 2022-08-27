import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:hive/hive.dart';
import 'package:money_manager/router/router.gr.dart';
import 'package:money_manager/widgets/home/stats/stats.dart';
import 'package:money_manager/widgets/shared/transaction/transaction_list.dart';

import '../../models/transaction.model.dart';
import '../../config/theme.dart';
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
  late Box totalAmountBox;
  late Box transactionBox;

  @override
  void initState() {
    super.initState();
    initData();
  }

  void initData() async {
    totalAmountBox = await Hive.openBox('totalSpend');
    transactionBox = await Hive.openBox('transactions');
    _totalAmount = totalAmountBox.get('value') ?? 0;
    _transactionList = transactionBox.values
        .map((e) => Transaction.fromJson(Map<String, dynamic>.from(e)))
        .toList();
    _transactionList.sort((a, b) => b.date.compareTo(a.date));
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

// void onPress() {
//   AutoRouter.of(context).push(const TransactionSectionRoute());
// }
}
