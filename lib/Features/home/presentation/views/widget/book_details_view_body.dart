import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_action.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_rating.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_detail_app_Bar.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:free_book_shelf/core/utils/styles.dart';
import 'package:free_book_shelf/core/widget/custom_button.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Column(
        children: [
          CustomBookDetailsAppBar(),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * .2),
            child: CustomBookImage(),
          ),
          SizedBox(height: 43),
          Text(
            'The Best Gifts',
            style: Styles.textStyle30.copyWith(fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 6),
          Opacity(
            opacity: .7,
            child: Text(
              'The Jungle book',
              style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 18),
          BookRating(mainAxisAlignment: MainAxisAlignment.center),
          const SizedBox(height: 37),
          BookAction(),
          const SizedBox(height: 50),
          Align(
            alignment: Alignment.centerLeft,
            child: Text(
              'You can also like',
              style: Styles.textStyle14.copyWith(fontWeight: FontWeight.w600),
            ),
          ),
           const SizedBox(height: 16,),
          SimilarBooksListView(),
           const SizedBox(height: 40,),
        ],
      ),
    );
  }
}
