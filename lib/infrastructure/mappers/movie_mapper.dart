import 'package:cinema_movie/domain/entities/movie.dart';
import 'package:cinema_movie/infrastructure/models/moviedb/movie_moviedb.dart';

class MovieMapper {
  static Movie movieDBtoEntity(OnlyMovieDB movie_) => Movie(
      adult: movie_.adult,
      backdropPath: (movie_.backdropPath != '')
          ? 'https://image.tmdb.org/t/p/w500${movie_.backdropPath}'
          : 'https://via.placeholder.com/500x300.png?text=No+image',
      genreIds: movie_.genreIds.map((e) => e.toString()).toList(),
      id: movie_.id,
      originalLanguage: movie_.originalLanguage,
      originalTitle: movie_.originalTitle,
      overview: movie_.overview,
      popularity: movie_.popularity,
      posterPath: (movie_.posterPath != '')
          ? 'https://image.tmdb.org/t/p/w500${movie_.posterPath}'
          : 'no-poster',
      releaseDate: movie_.releaseDate,
      title: movie_.title,
      video: movie_.video,
      voteAverage: movie_.voteAverage,
      voteCount: movie_.voteCount);
}
