import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

typedef CloseLoadingScreen = bool Function();

class LoadingScreenController {
  LoadingScreenController({required this.closeLoadingScreen});
  final CloseLoadingScreen closeLoadingScreen;
}

class LoadingScreen {
  factory LoadingScreen() => _instance;
  static final LoadingScreen _instance = LoadingScreen._();
  LoadingScreen._();

  LoadingScreenController? controller;

  void show({required BuildContext context}) {
    controller ??= showOverlay(context: context);
  }

  void hide() {
    controller?.closeLoadingScreen();
    controller = null;
  }

  LoadingScreenController? showOverlay({required BuildContext context}) {
    final state = Overlay.of(context, rootOverlay: true);

    final renderBox = context.findRenderObject() as RenderBox;
    final size = renderBox.size;

    ModalRoute.of(context)?.addScopedWillPopCallback(() async => false);

    final overlay = OverlayEntry(
      builder: (context) => Material(
        type: MaterialType.transparency,
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Center(
            child: SizedBox.square(
              dimension: 80.w,
              child: CircularProgressIndicator(
                color: Colors.blue,
              ),
            ),
          ),
        ),
      ),
    );

    final controller = LoadingScreenController(
      closeLoadingScreen: () {
        ModalRoute.of(context)?.removeScopedWillPopCallback(() async => false);
        return true;
      },
    );

    state.insert(overlay);
    return controller;
  }
}
