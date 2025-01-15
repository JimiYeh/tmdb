import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tmdb/component/loading_screen.dart';
import 'package:tmdb/pages/router.dart';
import '../utils/logger.dart';

/// 基礎頁面
/// 提供路由監聽和生命週期監聽功能
abstract class BasePage extends ConsumerStatefulWidget {
  const BasePage({super.key});

  //  * 頁面路由路徑
  String get pageRoutePath;
}

/// 基礎頁面狀態
abstract class BasePageState<T extends BasePage> extends ConsumerState<T> with RouteAware, WidgetsBindingObserver {
  /// 路由觀察者
  static final RouteObserver<ModalRoute<void>> routeObserver = RouteObserver<ModalRoute<void>>();

  @override
  void initState() {
    super.initState();
    // 註冊生命週期觀察者
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // 註冊路由觀察者
    routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  @override
  void dispose() {
    // 移除路由觀察者
    routeObserver.unsubscribe(this);
    // 移除生命週期觀察者
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  /// 當頁面進入焦點時調用
  @override
  void didPush() {
    logger.i('${T.toString()} - didPush');
  }

  /// 當頁面返回時調用
  @override
  void didPopNext() {
    logger.i('${T.toString()} - didPopNext');
  }

  /// 當頁面被覆蓋時調用
  @override
  void didPushNext() {
    logger.i('${T.toString()} - didPushNext');
  }

  /// 當頁面彈出時調用
  @override
  void didPop() {
    logger.i('${T.toString()} - didPop');
  }

  /// App 生命週期變化時調用
  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    logger.i('${T.toString()} - $state');
  }

  /// 是否為最上層路由
  bool isTopRoute() {
    return GoRouter.of(context).isTopRoute(widget.pageRoutePath);
  }

  /// 取消所有輸入框焦點
  void unfocusAll() {
    FocusScope.of(context).unfocus();
  }

  @override
  Widget build(BuildContext context) {
    // 使用 GestureDetector 包裹頁面內容
    return GestureDetector(
      onTap: unfocusAll,
      // 確保 GestureDetector 不會干擾其他可點擊的元件
      behavior: HitTestBehavior.translucent,
      // 子組件應該由具體實現類提供
      child: buildPage(context),
    );
  }

  /// 具體頁面實現此方法來構建頁面內容
  Widget buildPage(BuildContext context);

  void showLoading(BuildContext context) {
    LoadingScreen().show(context: context);
  }

  void hideLoading() {
    LoadingScreen().hide();
  }
}
