// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../widgets/home/home.dart' as _i2;
import '../widgets/tab_bar.dart' as _i1;
import '../widgets/transactions/transactions.dart' as _i3;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    TabBarRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.TabBar());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.Home());
    },
    TransactionSectionRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TransactionSection());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(TabBarRoute.name, path: '/', children: [
          _i4.RouteConfig(HomeRoute.name,
              path: 'Home', parent: TabBarRoute.name),
          _i4.RouteConfig(TransactionSectionRoute.name,
              path: 'transaction-section', parent: TabBarRoute.name)
        ])
      ];
}

/// generated route for
/// [_i1.TabBar]
class TabBarRoute extends _i4.PageRouteInfo<void> {
  const TabBarRoute({List<_i4.PageRouteInfo>? children})
      : super(TabBarRoute.name, path: '/', initialChildren: children);

  static const String name = 'TabBarRoute';
}

/// generated route for
/// [_i2.Home]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: 'Home');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.TransactionSection]
class TransactionSectionRoute extends _i4.PageRouteInfo<void> {
  const TransactionSectionRoute()
      : super(TransactionSectionRoute.name, path: 'transaction-section');

  static const String name = 'TransactionSectionRoute';
}
