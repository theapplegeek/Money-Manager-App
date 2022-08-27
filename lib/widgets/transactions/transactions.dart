import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
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
    return WillPopScope(
        onWillPop: () async => false,
        child: CupertinoTabView(
          builder: (context) {
            return const CupertinoPageScaffold(
                child: CustomScrollView(
                    physics: NeverScrollableScrollPhysics(),
                    slivers: [
                  TransactionsNavigationBar(),
                  SliverToBoxAdapter(
                      child: SizedBox(
                    width: double.infinity,
                    child: Text('ciao'),
                  ))
                ]));
          },
        ));
  }
}
