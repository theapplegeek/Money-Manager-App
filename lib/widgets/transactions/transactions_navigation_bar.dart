import 'package:flutter/material.dart';

class TransactionsNavigationBar extends StatelessWidget {
  const TransactionsNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // return const CupertinoSliverNavigationBar(
    //     backgroundColor: CupertinoColors.black,
    //     largeTitle: Text('All Transactions'),
    //     leading: Icon(CupertinoIcons.money_euro_circle,
    //         color: CupertinoColors.white),
    //     middle: Text('Money Manager'));
    return const SliverAppBar(
      pinned: true,
      snap: false,
      floating: false,
      expandedHeight: 160.0,
      flexibleSpace: FlexibleSpaceBar(
        title: Text('All Transactions'),
        background: FlutterLogo(),
      ),
    );
  }
}
