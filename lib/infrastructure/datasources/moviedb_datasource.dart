// ignore_for_file: avoid_print

import 'package:cinema_movie/config/constants/environment.dart';
import 'package:cinema_movie/infrastructure/mappers/movie_mapper.dart';
import 'package:cinema_movie/infrastructure/models/moviedb/moviedb_res.dart';
import 'package:dio/dio.dart';
import 'package:cinema_movie/domain/datasources/movies_datasource.dart';
import 'package:cinema_movie/domain/entities/movie.dart';

class MoviedbDatasource extends MoviesDataSource {
  final dio = Dio(
      BaseOptions(baseUrl: 'https://api.themoviedb.org/3', queryParameters: {
    'api_key': Environment.theMovieDbKey,
    'language': 'es-MX',
  }));

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) async {
    final res = await dio.get('/movie/now_playing', queryParameters: {
      'page': page,
    });

    final moviesRes = MovieDbResponse.fromJson(res.data);

    final List<Movie> movies = moviesRes.results
        .where((e) => e.posterPath != 'no-poster')
        .map((e2) => MovieMapper.movieDBtoEntity(e2))
        .toList();

    return movies;
  }
}
