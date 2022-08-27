import 'package:flutter/cupertino.dart';

class MainNavigationBar extends StatelessWidget {
  final double totalSpend;

  const MainNavigationBar({Key? key, required this.totalSpend})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
        backgroundColor: CupertinoColors.black,
        largeTitle: Text('Total Amount $totalSpend€'),
        leading: const Icon(CupertinoIcons.money_euro_circle,
            color: CupertinoColors.white),
        middle: const Text('Money Manager'),
        trailing: const Icon(CupertinoIcons.add, color: CupertinoColors.white));
  }
}
