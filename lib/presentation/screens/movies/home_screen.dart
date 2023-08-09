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
    const FavoritesView()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: viewRoutes,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white,
        onPressed: () => print('Dark Mode'),
        child: const Icon(
          Icons.dark_mode,
          color: Colors.black,
        ),
        tooltip: 'Dark Mode',
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: CustomBottomNavigation(currentIndex: pageIndex),
    );
  }
}
