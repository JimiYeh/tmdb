import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tmdb/pages/base_page.dart';
import 'package:tmdb/pages/home/home_provider.dart';
import 'package:tmdb/pages/home/widget/movie_slider.dart';
import 'package:tmdb/pages/router.dart';

class HomePage extends BasePage {
  const HomePage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();

  @override
  String get pageRoutePath => homeRoute;
}

class _HomePageState extends BasePageState<HomePage> {
  late PageController pageController;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  @override
  Widget buildPage(BuildContext context) {
    ref.listen(nowPlayingMoviesProvider, (previous, next) {
      if (next.isLoading) {
        showLoading(context);
      } else if (previous?.isLoading == true && !next.isLoading) {
        hideLoading();
      }
    });

    final moviesAsync = ref.watch(nowPlayingMoviesProvider);
    return moviesAsync.when(data: (movies) {
      return Scaffold(
        body: Stack(
          children: [
            if (movies.isNotEmpty)
              Center(
                child: MovieSlider(
                  movies: movies,
                  pageController: pageController,
                  totalPage: movies.length,
                  onPageChange: (index) {},
                ),
              ),
          ],
        ),
      );
    }, error: (error, stackTrace) {
      return SizedBox.shrink();
    }, loading: () {
      return SizedBox.shrink();
    });
  }
}
