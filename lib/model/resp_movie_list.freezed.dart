// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'resp_movie_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

MovieList _$MovieListFromJson(Map<String, dynamic> json) {
  return _MovieList.fromJson(json);
}

/// @nodoc
mixin _$MovieList {
  @JsonKey(name: "dates")
  Dates? get dates => throw _privateConstructorUsedError;
  @JsonKey(name: "page")
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: "results")
  List<Movie> get results => throw _privateConstructorUsedError;
  @JsonKey(name: "total_pages")
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: "total_results")
  int get totalResults => throw _privateConstructorUsedError;

  /// Serializes this MovieList to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieListCopyWith<MovieList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieListCopyWith<$Res> {
  factory $MovieListCopyWith(MovieList value, $Res Function(MovieList) then) =
      _$MovieListCopyWithImpl<$Res, MovieList>;
  @useResult
  $Res call(
      {@JsonKey(name: "dates") Dates? dates,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<Movie> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});

  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class _$MovieListCopyWithImpl<$Res, $Val extends MovieList>
    implements $MovieListCopyWith<$Res> {
  _$MovieListCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DatesCopyWith<$Res>? get dates {
    if (_value.dates == null) {
      return null;
    }

    return $DatesCopyWith<$Res>(_value.dates!, (value) {
      return _then(_value.copyWith(dates: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$MovieListImplCopyWith<$Res>
    implements $MovieListCopyWith<$Res> {
  factory _$$MovieListImplCopyWith(
          _$MovieListImpl value, $Res Function(_$MovieListImpl) then) =
      __$$MovieListImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "dates") Dates? dates,
      @JsonKey(name: "page") int page,
      @JsonKey(name: "results") List<Movie> results,
      @JsonKey(name: "total_pages") int totalPages,
      @JsonKey(name: "total_results") int totalResults});

  @override
  $DatesCopyWith<$Res>? get dates;
}

/// @nodoc
class __$$MovieListImplCopyWithImpl<$Res>
    extends _$MovieListCopyWithImpl<$Res, _$MovieListImpl>
    implements _$$MovieListImplCopyWith<$Res> {
  __$$MovieListImplCopyWithImpl(
      _$MovieListImpl _value, $Res Function(_$MovieListImpl) _then)
      : super(_value, _then);

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? dates = freezed,
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$MovieListImpl(
      dates: freezed == dates
          ? _value.dates
          : dates // ignore: cast_nullable_to_non_nullable
              as Dates?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<Movie>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieListImpl implements _MovieList {
  const _$MovieListImpl(
      {@JsonKey(name: "dates") this.dates,
      @JsonKey(name: "page") required this.page,
      @JsonKey(name: "results") required final List<Movie> results,
      @JsonKey(name: "total_pages") required this.totalPages,
      @JsonKey(name: "total_results") required this.totalResults})
      : _results = results;

  factory _$MovieListImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieListImplFromJson(json);

  @override
  @JsonKey(name: "dates")
  final Dates? dates;
  @override
  @JsonKey(name: "page")
  final int page;
  final List<Movie> _results;
  @override
  @JsonKey(name: "results")
  List<Movie> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: "total_pages")
  final int totalPages;
  @override
  @JsonKey(name: "total_results")
  final int totalResults;

  @override
  String toString() {
    return 'MovieList(dates: $dates, page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieListImpl &&
            (identical(other.dates, dates) || other.dates == dates) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, dates, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieListImplCopyWith<_$MovieListImpl> get copyWith =>
      __$$MovieListImplCopyWithImpl<_$MovieListImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieListImplToJson(
      this,
    );
  }
}

abstract class _MovieList implements MovieList {
  const factory _MovieList(
          {@JsonKey(name: "dates") final Dates? dates,
          @JsonKey(name: "page") required final int page,
          @JsonKey(name: "results") required final List<Movie> results,
          @JsonKey(name: "total_pages") required final int totalPages,
          @JsonKey(name: "total_results") required final int totalResults}) =
      _$MovieListImpl;

  factory _MovieList.fromJson(Map<String, dynamic> json) =
      _$MovieListImpl.fromJson;

  @override
  @JsonKey(name: "dates")
  Dates? get dates;
  @override
  @JsonKey(name: "page")
  int get page;
  @override
  @JsonKey(name: "results")
  List<Movie> get results;
  @override
  @JsonKey(name: "total_pages")
  int get totalPages;
  @override
  @JsonKey(name: "total_results")
  int get totalResults;

  /// Create a copy of MovieList
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieListImplCopyWith<_$MovieListImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dates _$DatesFromJson(Map<String, dynamic> json) {
  return _Dates.fromJson(json);
}

/// @nodoc
mixin _$Dates {
  @JsonKey(name: "maximum")
  DateTime get maximum => throw _privateConstructorUsedError;
  @JsonKey(name: "minimum")
  DateTime get minimum => throw _privateConstructorUsedError;

  /// Serializes this Dates to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DatesCopyWith<Dates> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DatesCopyWith<$Res> {
  factory $DatesCopyWith(Dates value, $Res Function(Dates) then) =
      _$DatesCopyWithImpl<$Res, Dates>;
  @useResult
  $Res call(
      {@JsonKey(name: "maximum") DateTime maximum,
      @JsonKey(name: "minimum") DateTime minimum});
}

/// @nodoc
class _$DatesCopyWithImpl<$Res, $Val extends Dates>
    implements $DatesCopyWith<$Res> {
  _$DatesCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_value.copyWith(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DatesImplCopyWith<$Res> implements $DatesCopyWith<$Res> {
  factory _$$DatesImplCopyWith(
          _$DatesImpl value, $Res Function(_$DatesImpl) then) =
      __$$DatesImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "maximum") DateTime maximum,
      @JsonKey(name: "minimum") DateTime minimum});
}

/// @nodoc
class __$$DatesImplCopyWithImpl<$Res>
    extends _$DatesCopyWithImpl<$Res, _$DatesImpl>
    implements _$$DatesImplCopyWith<$Res> {
  __$$DatesImplCopyWithImpl(
      _$DatesImpl _value, $Res Function(_$DatesImpl) _then)
      : super(_value, _then);

  /// Create a copy of Dates
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? maximum = null,
    Object? minimum = null,
  }) {
    return _then(_$DatesImpl(
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as DateTime,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DatesImpl implements _Dates {
  const _$DatesImpl(
      {@JsonKey(name: "maximum") required this.maximum,
      @JsonKey(name: "minimum") required this.minimum});

  factory _$DatesImpl.fromJson(Map<String, dynamic> json) =>
      _$$DatesImplFromJson(json);

  @override
  @JsonKey(name: "maximum")
  final DateTime maximum;
  @override
  @JsonKey(name: "minimum")
  final DateTime minimum;

  @override
  String toString() {
    return 'Dates(maximum: $maximum, minimum: $minimum)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DatesImpl &&
            (identical(other.maximum, maximum) || other.maximum == maximum) &&
            (identical(other.minimum, minimum) || other.minimum == minimum));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, maximum, minimum);

  /// Create a copy of Dates
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      __$$DatesImplCopyWithImpl<_$DatesImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DatesImplToJson(
      this,
    );
  }
}

abstract class _Dates implements Dates {
  const factory _Dates(
      {@JsonKey(name: "maximum") required final DateTime maximum,
      @JsonKey(name: "minimum") required final DateTime minimum}) = _$DatesImpl;

  factory _Dates.fromJson(Map<String, dynamic> json) = _$DatesImpl.fromJson;

  @override
  @JsonKey(name: "maximum")
  DateTime get maximum;
  @override
  @JsonKey(name: "minimum")
  DateTime get minimum;

  /// Create a copy of Dates
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DatesImplCopyWith<_$DatesImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Movie _$MovieFromJson(Map<String, dynamic> json) {
  return _Movie.fromJson(json);
}

/// @nodoc
mixin _$Movie {
  @JsonKey(name: "adult")
  bool get adult => throw _privateConstructorUsedError;
  @JsonKey(name: "backdrop_path")
  String? get backdropPath => throw _privateConstructorUsedError;
  @JsonKey(name: "genre_ids")
  List<int> get genreIds => throw _privateConstructorUsedError;
  @JsonKey(name: "id")
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: "original_language")
  String get originalLanguage => throw _privateConstructorUsedError;
  @JsonKey(name: "original_title")
  String get originalTitle => throw _privateConstructorUsedError;
  @JsonKey(name: "overview")
  String get overview => throw _privateConstructorUsedError;
  @JsonKey(name: "popularity")
  double get popularity => throw _privateConstructorUsedError;
  @JsonKey(name: "poster_path")
  String? get posterPath => throw _privateConstructorUsedError;
  @JsonKey(name: "release_date")
  DateTime get releaseDate => throw _privateConstructorUsedError;
  @JsonKey(name: "title")
  String get title => throw _privateConstructorUsedError;
  @JsonKey(name: "vote_average")
  double get voteAverage => throw _privateConstructorUsedError;

  /// Serializes this Movie to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MovieCopyWith<Movie> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieCopyWith<$Res> {
  factory $MovieCopyWith(Movie value, $Res Function(Movie) then) =
      _$MovieCopyWithImpl<$Res, Movie>;
  @useResult
  $Res call(
      {@JsonKey(name: "adult") bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "release_date") DateTime releaseDate,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "vote_average") double voteAverage});
}

/// @nodoc
class _$MovieCopyWithImpl<$Res, $Val extends Movie>
    implements $MovieCopyWith<$Res> {
  _$MovieCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? title = null,
    Object? voteAverage = null,
  }) {
    return _then(_value.copyWith(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value.genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieImplCopyWith<$Res> implements $MovieCopyWith<$Res> {
  factory _$$MovieImplCopyWith(
          _$MovieImpl value, $Res Function(_$MovieImpl) then) =
      __$$MovieImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: "adult") bool adult,
      @JsonKey(name: "backdrop_path") String? backdropPath,
      @JsonKey(name: "genre_ids") List<int> genreIds,
      @JsonKey(name: "id") int id,
      @JsonKey(name: "original_language") String originalLanguage,
      @JsonKey(name: "original_title") String originalTitle,
      @JsonKey(name: "overview") String overview,
      @JsonKey(name: "popularity") double popularity,
      @JsonKey(name: "poster_path") String? posterPath,
      @JsonKey(name: "release_date") DateTime releaseDate,
      @JsonKey(name: "title") String title,
      @JsonKey(name: "vote_average") double voteAverage});
}

/// @nodoc
class __$$MovieImplCopyWithImpl<$Res>
    extends _$MovieCopyWithImpl<$Res, _$MovieImpl>
    implements _$$MovieImplCopyWith<$Res> {
  __$$MovieImplCopyWithImpl(
      _$MovieImpl _value, $Res Function(_$MovieImpl) _then)
      : super(_value, _then);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? adult = null,
    Object? backdropPath = freezed,
    Object? genreIds = null,
    Object? id = null,
    Object? originalLanguage = null,
    Object? originalTitle = null,
    Object? overview = null,
    Object? popularity = null,
    Object? posterPath = freezed,
    Object? releaseDate = null,
    Object? title = null,
    Object? voteAverage = null,
  }) {
    return _then(_$MovieImpl(
      adult: null == adult
          ? _value.adult
          : adult // ignore: cast_nullable_to_non_nullable
              as bool,
      backdropPath: freezed == backdropPath
          ? _value.backdropPath
          : backdropPath // ignore: cast_nullable_to_non_nullable
              as String?,
      genreIds: null == genreIds
          ? _value._genreIds
          : genreIds // ignore: cast_nullable_to_non_nullable
              as List<int>,
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      originalLanguage: null == originalLanguage
          ? _value.originalLanguage
          : originalLanguage // ignore: cast_nullable_to_non_nullable
              as String,
      originalTitle: null == originalTitle
          ? _value.originalTitle
          : originalTitle // ignore: cast_nullable_to_non_nullable
              as String,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
      popularity: null == popularity
          ? _value.popularity
          : popularity // ignore: cast_nullable_to_non_nullable
              as double,
      posterPath: freezed == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String?,
      releaseDate: null == releaseDate
          ? _value.releaseDate
          : releaseDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      voteAverage: null == voteAverage
          ? _value.voteAverage
          : voteAverage // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MovieImpl implements _Movie {
  const _$MovieImpl(
      {@JsonKey(name: "adult") required this.adult,
      @JsonKey(name: "backdrop_path") this.backdropPath,
      @JsonKey(name: "genre_ids") required final List<int> genreIds,
      @JsonKey(name: "id") required this.id,
      @JsonKey(name: "original_language") required this.originalLanguage,
      @JsonKey(name: "original_title") required this.originalTitle,
      @JsonKey(name: "overview") required this.overview,
      @JsonKey(name: "popularity") required this.popularity,
      @JsonKey(name: "poster_path") this.posterPath,
      @JsonKey(name: "release_date") required this.releaseDate,
      @JsonKey(name: "title") required this.title,
      @JsonKey(name: "vote_average") required this.voteAverage})
      : _genreIds = genreIds;

  factory _$MovieImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieImplFromJson(json);

  @override
  @JsonKey(name: "adult")
  final bool adult;
  @override
  @JsonKey(name: "backdrop_path")
  final String? backdropPath;
  final List<int> _genreIds;
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genreIds {
    if (_genreIds is EqualUnmodifiableListView) return _genreIds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_genreIds);
  }

  @override
  @JsonKey(name: "id")
  final int id;
  @override
  @JsonKey(name: "original_language")
  final String originalLanguage;
  @override
  @JsonKey(name: "original_title")
  final String originalTitle;
  @override
  @JsonKey(name: "overview")
  final String overview;
  @override
  @JsonKey(name: "popularity")
  final double popularity;
  @override
  @JsonKey(name: "poster_path")
  final String? posterPath;
  @override
  @JsonKey(name: "release_date")
  final DateTime releaseDate;
  @override
  @JsonKey(name: "title")
  final String title;
  @override
  @JsonKey(name: "vote_average")
  final double voteAverage;

  @override
  String toString() {
    return 'Movie(adult: $adult, backdropPath: $backdropPath, genreIds: $genreIds, id: $id, originalLanguage: $originalLanguage, originalTitle: $originalTitle, overview: $overview, popularity: $popularity, posterPath: $posterPath, releaseDate: $releaseDate, title: $title, voteAverage: $voteAverage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieImpl &&
            (identical(other.adult, adult) || other.adult == adult) &&
            (identical(other.backdropPath, backdropPath) ||
                other.backdropPath == backdropPath) &&
            const DeepCollectionEquality().equals(other._genreIds, _genreIds) &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.originalLanguage, originalLanguage) ||
                other.originalLanguage == originalLanguage) &&
            (identical(other.originalTitle, originalTitle) ||
                other.originalTitle == originalTitle) &&
            (identical(other.overview, overview) ||
                other.overview == overview) &&
            (identical(other.popularity, popularity) ||
                other.popularity == popularity) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.releaseDate, releaseDate) ||
                other.releaseDate == releaseDate) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.voteAverage, voteAverage) ||
                other.voteAverage == voteAverage));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      adult,
      backdropPath,
      const DeepCollectionEquality().hash(_genreIds),
      id,
      originalLanguage,
      originalTitle,
      overview,
      popularity,
      posterPath,
      releaseDate,
      title,
      voteAverage);

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      __$$MovieImplCopyWithImpl<_$MovieImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieImplToJson(
      this,
    );
  }
}

abstract class _Movie implements Movie {
  const factory _Movie(
          {@JsonKey(name: "adult") required final bool adult,
          @JsonKey(name: "backdrop_path") final String? backdropPath,
          @JsonKey(name: "genre_ids") required final List<int> genreIds,
          @JsonKey(name: "id") required final int id,
          @JsonKey(name: "original_language")
          required final String originalLanguage,
          @JsonKey(name: "original_title") required final String originalTitle,
          @JsonKey(name: "overview") required final String overview,
          @JsonKey(name: "popularity") required final double popularity,
          @JsonKey(name: "poster_path") final String? posterPath,
          @JsonKey(name: "release_date") required final DateTime releaseDate,
          @JsonKey(name: "title") required final String title,
          @JsonKey(name: "vote_average") required final double voteAverage}) =
      _$MovieImpl;

  factory _Movie.fromJson(Map<String, dynamic> json) = _$MovieImpl.fromJson;

  @override
  @JsonKey(name: "adult")
  bool get adult;
  @override
  @JsonKey(name: "backdrop_path")
  String? get backdropPath;
  @override
  @JsonKey(name: "genre_ids")
  List<int> get genreIds;
  @override
  @JsonKey(name: "id")
  int get id;
  @override
  @JsonKey(name: "original_language")
  String get originalLanguage;
  @override
  @JsonKey(name: "original_title")
  String get originalTitle;
  @override
  @JsonKey(name: "overview")
  String get overview;
  @override
  @JsonKey(name: "popularity")
  double get popularity;
  @override
  @JsonKey(name: "poster_path")
  String? get posterPath;
  @override
  @JsonKey(name: "release_date")
  DateTime get releaseDate;
  @override
  @JsonKey(name: "title")
  String get title;
  @override
  @JsonKey(name: "vote_average")
  double get voteAverage;

  /// Create a copy of Movie
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MovieImplCopyWith<_$MovieImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
