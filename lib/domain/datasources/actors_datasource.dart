import 'package:cinema_movie/domain/entities/actor.dart';

abstract class ActorsDatasource {
  Future<List<Actor>> getActosByMovie(String movieId);
}