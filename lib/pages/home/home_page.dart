import 'package:flutter/material.dart';
import 'package:flutter_riverpod/src/consumer.dart';
import 'package:tmdb/pages/base_page.dart';
import 'package:tmdb/pages/router.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();

  @override
  String get pageRoutePath => homeRoute;
}

class _HomePageState extends BasePageState<HomePage> {
  @override
  Widget buildPage(BuildContext context) {
    return const Text('Home');
  }
}
