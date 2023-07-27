import 'package:cinema_movie/domain/datasources/movies_datasource.dart';
import 'package:cinema_movie/domain/entities/movie.dart';
import 'package:cinema_movie/domain/repositories/movies_repository.dart';

class MovieRepositoryImpl extends MoviesRepository {
  final MoviesDataSource innDataSource;
  MovieRepositoryImpl(this.innDataSource); // Constructor injection

  @override
  Future<List<Movie>> getNowPlaying({int page = 1}) {
    return innDataSource.getNowPlaying(page: page);
  }
  
  @override
  Future<List<Movie>> getPopular({int page = 1}) {
    return innDataSource.getPopular(page: page);
  }
  
  @override
  Future<List<Movie>> getTopRated({int page = 1}) {
    return innDataSource.getTopRated(page: page);
  }

  @override
  Future<List<Movie>> getUpcomming({int page = 1}) {
    return innDataSource.getUpcomming(page: page);
  }
  
  @override
  Future<Movie> getMovieById(String id) {
    return innDataSource.getMovieById(id);
  }
}
