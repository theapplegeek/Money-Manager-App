import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../router/router.gr.dart';
import '../config/theme.dart';

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp.router(
      routeInformationParser: _appRouter.defaultRouteParser(),
      routerDelegate: _appRouter.delegate(),
      title: 'Money Manager',
      debugShowCheckedModeBanner: false,
      theme: MyTheme.iosTheme,
    );
  }
}