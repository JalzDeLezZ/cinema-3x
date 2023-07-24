// ignore_for_file: prefer_const_literals_to_create_immutables
import 'package:cinema_movie/presentation/providers/providers.dart';
import 'package:cinema_movie/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _HomeView(),
    );
  }
}

class _HomeView extends ConsumerStatefulWidget {
  const _HomeView();

  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends ConsumerState<_HomeView> {
  @override
  void initState() {
    super.initState();
    ref.read(nowPlayingMoviesProvider.notifier).loadNextPage();
  }

  @override
  Widget build(BuildContext context) {
    // final newPlayingMovies = ref.watch(nowPlayingMoviesProvider);
    final slideShowMovies = ref.watch(moviesSlideshowProvider);

    return Column(
      children: [
        const CustomAppbar(),
        MoviesSlideshow(movies: slideShowMovies)
        /* Expanded(  child: ListView.builder(    itemCount: movies.length,    itemBuilder: (context, index) {      final movie = movies[index];      return ListTile(        title: Text(movie.title),      );    },  ),) */
      ],
    );
  }
}
