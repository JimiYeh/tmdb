import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb/pages/home/home_page.dart';

extension RouterExt on GoRouter {
  // 檢查是否為最上層路由
  bool isTopRoute(String path) {
    final currentLocation = routerDelegate.currentConfiguration.uri.path;
    return path == currentLocation;
  }
}

// 首頁
const homeRoute = '/';

final RouteObserver<ModalRoute> routeObserver = RouteObserver<ModalRoute>();

final routerProvider = Provider<GoRouter>((ref) {
  return GoRouter(
    initialLocation: homeRoute,
    observers: [routeObserver],
    routes: [
      GoRoute(
        path: homeRoute,
        builder: (context, state) => const HomePage(),
      ),
    ],
  );
});
