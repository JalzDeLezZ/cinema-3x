import 'package:cinema_movie/config/constants/environment.dart';
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

    final List<Movie> movies = [];
    return [];
  }
}
