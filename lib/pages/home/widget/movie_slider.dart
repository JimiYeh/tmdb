import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
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
      itemBuilder: (context, index) {
        return _MovieSliderItem(movie: movies[index]);
      },
    );
  }
}

class _MovieSliderItem extends StatelessWidget {
  final Movie movie;
  const _MovieSliderItem({super.key, required this.movie});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.sizeOf(context).height;
    return Container(
      height: height * 0.7,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
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
        child: SingleChildScrollView(
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                child: CachedNetworkImage(imageUrl: getImageUrl(movie.backdropPath), fit: BoxFit.contain),
              ),
              SizedBox(height: 20),
              Text(
                movie.title,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              RatingBarIndicator(
                rating: movie.voteAverage / 2,
                itemBuilder: (context, index) => Icon(Icons.star, color: Colors.amber),
                itemCount: 5,
                itemSize: 20,
                unratedColor: Colors.amber.withValues(alpha: 0.2),
                direction: Axis.horizontal,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
