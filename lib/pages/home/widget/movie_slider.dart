import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tmdb/model/resp_movie_list.dart';
import 'package:tmdb/utils/tmdb.dart';

typedef OnPageChange = void Function(int index);

class MovieSlider extends StatelessWidget {
  final List<Movie> movies;
  final PageController pageController;
  final int totalPage;
  final OnPageChange onPageChange;

  const MovieSlider({
    super.key,
    required this.movies,
    required this.pageController,
    required this.totalPage,
    required this.onPageChange,
  });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: pageController,
      itemCount: movies.length,
      onPageChanged: onPageChange,
      itemBuilder: (context, index) {
        return AnimatedBuilder(
          animation: pageController,
          builder: (context, child) {
            double value = 1.0;

            if (pageController.hasClients && pageController.position.hasViewportDimension) {
              // 只有在 PageView 完全構建後才訪問 page
              value = ((pageController.page ?? pageController.initialPage) - index).toDouble();
              // 限制偏移範圍
              value = (1 - (value.abs() * .5)).clamp(0.0, 1.0);
            }

            return Transform.translate(
              offset: Offset(0, 100 * (1 - value)), // 往下偏移
              child: child,
            );
          },
          child: _MovieSliderItem(movie: movies[index]),
        );
      },
    );
  }
}

class _MovieSliderItem extends StatelessWidget {
  final Movie movie;
  const _MovieSliderItem({required this.movie});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      color: Colors.transparent,
      alignment: Alignment.bottomCenter,
      child: Container(
        height: height * 0.7,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.5),
              blurRadius: 10,
              offset: Offset(0, 10),
            ),
          ],
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // 封面 用橫幅 16:9 的 backdropPath
              if (movie.backdropPath != null)
                ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: CachedNetworkImage(imageUrl: getImageUrl(movie.backdropPath!), fit: BoxFit.contain),
                ),
              SizedBox(height: 20),
              // 標題
              Text(
                movie.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              // 評分
              RatingBarIndicator(
                rating: movie.voteAverage / 2,
                itemBuilder: (context, index) => Icon(Icons.star, color: Colors.amber),
                itemCount: 5,
                itemSize: 24.w,
                unratedColor: Colors.amber.withValues(alpha: 0.2),
                direction: Axis.horizontal,
              ),
              SizedBox(height: 10),
              // 簡介
              Expanded(
                child: Text(
                  movie.overview,
                  style: TextStyle(fontSize: 16, color: Colors.blueGrey),
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
