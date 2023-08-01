// ignore_for_file: prefer_const_literals_to_create_immutables, avoid_print
import 'package:cinema_movie/presentation/views/views.dart';
import 'package:cinema_movie/presentation/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  static const name = 'home-screen';
  final int pageIndex;

  HomeScreen({super.key, required this.pageIndex});

  final viewRoutes = [
    const HomeView(),
    const Center(child: Text('Search')),
    const FavoritesView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      bottomNavigationBar: CustomBottomNavigation(currentIndex: pageIndex),
    );
  }
}
