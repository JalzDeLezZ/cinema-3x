
// This repository is inmutable
import 'package:cinema_movie/infrastructure/datasources/actor_moviedb_datasource.dart';
import 'package:cinema_movie/infrastructure/repositories/actor_repository_impl.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Provider Methods for Actors
final actorRepositoryProvider = Provider<ActorRepositoryImpl>((ref) {
  return ActorRepositoryImpl(ActorMovieDbDataSource());
});
