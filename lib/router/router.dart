import 'package:auto_route/annotations.dart';
import 'package:money_manager/widgets/home/home.dart';
import 'package:money_manager/widgets/tab_bar.dart';
import 'package:money_manager/widgets/transactions/transactions.dart';

@MaterialAutoRouter(replaceInRouteName: 'app_router', routes: <AutoRoute>[
  AutoRoute(
      page: TabBar,
      initial: true,
      children: [AutoRoute(page: Home), AutoRoute(page: TransactionSection)]),
])
class $AppRouter {}
