import 'package:cinema_movie/infrastructure/datasources/moviedb_datasource.dart';
import 'package:cinema_movie/infrastructure/repositories/movie_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// This repository is inmutable
final movieRepositoryProvider = Provider<MovieRepositoryImpl>((ref) {
  /* searchMovies */
  return MovieRepositoryImpl(MoviedbDatasource());
});
