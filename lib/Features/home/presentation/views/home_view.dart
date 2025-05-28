import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body:  HomeViewBody(),
    );
  }
}