import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_appBar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: const [CustomAppBar()]);
  }
}
