import 'package:flutter/material.dart';

class MainNavigationBar extends StatelessWidget {
  final double balance;

  const MainNavigationBar({Key? key, required this.balance})
      : super(key: key);

  void _openAddModal() {}

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      pinned: true,
      snap: false,
      floating: false,
      backgroundColor: Colors.black,
      leading: const Icon(Icons.euro_rounded, color: Colors.white),
      title: Container(
        alignment: Alignment.center,
        child: const Text('Money Manager'),
      ),
      actions: [
        IconButton(
            icon: const Icon(Icons.add_circle_outline_rounded),
            onPressed: _openAddModal)
      ],
      expandedHeight: 120.0,
      collapsedHeight: 75,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: false,
        titlePadding: const EdgeInsets.only(bottom: 5, left: 15, top: 75),
        title: Text(
          'Balance $balance€',
          style: const TextStyle(color: Colors.white),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
