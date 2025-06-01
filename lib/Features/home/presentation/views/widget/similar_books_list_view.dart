import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_image.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .15,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),

            child: CustomBookImage(imageUrl: 'https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.xtool.com%2Fblogs%2Feducation%2Fis-programming-background-important-3-questions-you-should-think-clearly&psig=AOvVaw1KT-FpXaJP6IsPqrIbBR1q&ust=1748888314791000&source=images&cd=vfe&opi=89978449&ved=0CBQQjRxqFwoTCODjpenq0I0DFQAAAAAdAAAAABAE',),
          );
        },
      ),
    );
  }
}
