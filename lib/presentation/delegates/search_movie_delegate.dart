// ignore_for_file: avoid_print
import 'package:animate_do/animate_do.dart';
import 'package:cinema_movie/domain/entities/movie.dart';
import 'package:flutter/material.dart';

typedef SearchMovieCallback = Future<List<Movie>> Function(String query);

class SeearchMovieDelegate extends SearchDelegate<Movie?> {
  final SearchMovieCallback searchMovieCallback;

  SeearchMovieDelegate({required this.searchMovieCallback});

  @override
  String get searchFieldLabel => 'Search Movie';

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      FadeIn(
        animate: query.isNotEmpty,
        child: IconButton(
          onPressed: () => query = '',
          icon: const Icon(Icons.clear),
        ),
      ),
    ];
  }

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
        onPressed: () => close(context, null),
        icon: const Icon(Icons.arrow_back_ios_new_rounded));
  }

  @override
  Widget buildResults(BuildContext context) {
    return const Text('buildResults');
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return FutureBuilder(
        future: searchMovieCallback(query),
        initialData: const [],
        builder: (context, snapshot) {
          final movies = snapshot.data ?? [];
          return ListView.builder(
            itemCount: movies.length,
            itemBuilder: (context, index) {
              final movie = movies[index];
              return ListTile(
                title: Text(movie.title),
              );
            },
          );
        });
  }
}
