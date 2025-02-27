import 'package:flutter/cupertino.dart';

class TransactionList extends StatelessWidget {
  const TransactionList({Key? key}) : super(key: key);

  List<Widget> generateList() {
    List<Widget> list = [];
    for (int i = 0; i < 10; i++) {
      list.add(Text('List element number $i', textAlign: TextAlign.center));
    }
    return list;
  }

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      child: ListView(
          padding: const EdgeInsets.all(0), children: [...generateList()]),
    );
  }
}
