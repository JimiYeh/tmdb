import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmdb/pages/router.dart';

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        final router = ref.read(routerProvider);

        return MaterialApp.router(
          routerConfig: router,
          theme: ThemeData(
            primarySwatch: Colors.blue,
          ),
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                // 鎖定字體大小 不受系統字體大小影響
                textScaler: TextScaler.linear(1.w),
              ),
              child: child!,
            );
          },
        );
      },
    );
  }
}
