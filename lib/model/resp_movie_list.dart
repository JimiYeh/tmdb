// To parse this JSON data, do
//
//     final movieList = movieListFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'resp_movie_list.freezed.dart';
part 'resp_movie_list.g.dart';

MovieList movieListFromJson(String str) => MovieList.fromJson(json.decode(str));

String movieListToJson(MovieList data) => json.encode(data.toJson());

@freezed
class MovieList with _$MovieList {
  const factory MovieList({
    @JsonKey(name: "dates") Dates? dates,
    @JsonKey(name: "page") required int page,
    @JsonKey(name: "results") required List<Movie> results,
    @JsonKey(name: "total_pages") required int totalPages,
    @JsonKey(name: "total_results") required int totalResults,
  }) = _MovieList;

  factory MovieList.fromJson(Map<String, dynamic> json) => _$MovieListFromJson(json);
}

@freezed
class Dates with _$Dates {
  const factory Dates({
    @JsonKey(name: "maximum") required DateTime maximum,
    @JsonKey(name: "minimum") required DateTime minimum,
  }) = _Dates;

  factory Dates.fromJson(Map<String, dynamic> json) => _$DatesFromJson(json);
}

@freezed
class Movie with _$Movie {
  const factory Movie({
    @JsonKey(name: "adult") required bool adult,
    @JsonKey(name: "backdrop_path") required String backdropPath,
    @JsonKey(name: "genre_ids") required List<int> genreIds,
    @JsonKey(name: "id") required int id,
    @JsonKey(name: "original_language") required String originalLanguage,
    @JsonKey(name: "original_title") required String originalTitle,
    @JsonKey(name: "overview") required String overview,
    @JsonKey(name: "popularity") required double popularity,
    @JsonKey(name: "poster_path") required String posterPath,
    @JsonKey(name: "release_date") required DateTime releaseDate,
    @JsonKey(name: "title") required String title,
    @JsonKey(name: "video") required bool video,
    @JsonKey(name: "vote_average") required double voteAverage,
    @JsonKey(name: "vote_count") required int voteCount,
  }) = _Movie;

  factory Movie.fromJson(Map<String, dynamic> json) => _$MovieFromJson(json);
}
