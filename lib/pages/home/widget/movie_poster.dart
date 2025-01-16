import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/utils/logger.dart';
import 'package:tmdb/utils/tmdb.dart';

class MoviePoster extends StatelessWidget {
  final List<Movie> movies;
  // 目前 page controller 的值
  final PageController pageController;

  const MoviePoster({super.key, required this.movies, required this.pageController});

  @override
  Widget build(BuildContext context) {
    if (movies.isEmpty) return Container();

    // 用兩層圖疊再一起，一層是下一張poster，一層是動態裁剪的 poster
    return AnimatedBuilder(
      animation: pageController,
      builder: (context, child) {
        if (!pageController.hasClients || !pageController.position.hasViewportDimension) return _PosterItem(movie: movies[0]);

        double pageValue = pageController.page?.toDouble() ?? pageController.initialPage.toDouble();
        // 取 目前 pageValue 以及下一張 poster 的 index
        final int index = (pageValue).clamp(0, movies.length - 1).toInt();
        final int nextIndex = (pageValue + 1).clamp(0, movies.length - 1).toInt();

        logger.d('pageValue: $pageValue, index: $index, nextIndex: $nextIndex');

        return Stack(
          alignment: Alignment.topCenter,
          children: [
            _PosterItem(movie: movies[index]),

            ClipPath(
              clipper: PosterClipper(progress: pageValue - index),
              child: _PosterItem(movie: movies[nextIndex]),
            ),

            // 漸入漸出效果
            Container(
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.transparent,
                      Colors.white,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    stops: [0.3, 0.8]),
              ),
            ),
          ],
        );
      },
    );
  }
}

class PosterClipper extends CustomClipper<Path> {
  final double progress;
  const PosterClipper({required this.progress});

  @override
  Path getClip(Size size) {
    Path path = Path();
    path.addRect(Rect.fromLTRB(size.width - (size.width * progress), 0, size.width, size.height));
    logger.d('progress: $progress');
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => true;
}

class _PosterItem extends StatelessWidget {
  final Movie movie;
  const _PosterItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: CachedNetworkImage(
        imageUrl: getImageUrl(movie.posterPath),
        fit: BoxFit.cover,
        alignment: Alignment.topCenter,
        placeholder: (context, url) => Container(
          color: Colors.grey[200],
        ),
      ),
    );
  }
}
