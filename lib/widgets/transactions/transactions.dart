import 'package:flutter/material.dart';
import 'package:money_manager/widgets/transactions/transactions_navigation_bar.dart';

class TransactionSection extends StatefulWidget {
  const TransactionSection({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return TransactionSectionState();
  }
}

class TransactionSectionState extends State<TransactionSection> {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(slivers: [
      const TransactionsNavigationBar(),
      SliverToBoxAdapter(
        child: Container(
          alignment: Alignment.center,
          width: double.infinity,
          child: const Text(
            'ciao',
            textAlign: TextAlign.center,
          ),
        ),
      )
    ]);
  }
}
