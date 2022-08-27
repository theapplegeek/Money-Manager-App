import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:money_manager/router/router.gr.dart';

class TabBar extends StatelessWidget {
  const TabBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter.tabBar(
        routes: const [
          HomeRoute(),
          TransactionSectionRoute(),
        ],
        builder: (context, child, controller) {
          final tabsRouter = AutoTabsRouter.of(context);
          return CupertinoTabScaffold(
              tabBar: CupertinoTabBar(
                currentIndex: tabsRouter.activeIndex,
                onTap: tabsRouter.setActiveIndex,
                activeColor: CupertinoColors.activeBlue,
                inactiveColor: CupertinoColors.white,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home),
                    label: 'Home',
                  ),
                  BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.list_bullet),
                    label: 'Transactions',
                  ),
                ],
              ),
              tabBuilder: (BuildContext context, int index) {
                return child;
              });
        });
  }
}
