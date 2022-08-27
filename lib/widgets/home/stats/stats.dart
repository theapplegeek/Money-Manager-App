import 'package:flutter/cupertino.dart';

class Stats extends StatelessWidget {
  const Stats({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
        child: Container(
      width: double.infinity,
      decoration: BoxDecoration(
          color: CupertinoColors.secondarySystemFill,
          borderRadius: const BorderRadius.all(Radius.circular(10)),
          border: Border.all(
              color: CupertinoColors.white,
              width: 1,
              style: BorderStyle.solid)),
      padding: const EdgeInsets.all(50),
      margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: const Text(
        'Testo a caso',
        textAlign: TextAlign.center,
      ),
    ));
  }
}
