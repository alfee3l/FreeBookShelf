import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_action.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_rating.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_detail_app_Bar.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/similar_books_list_view.dart';
import 'package:free_book_shelf/core/utils/styles.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key, required this.bookModel});
final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
            
              children: [
                CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * .2),
                  child: CustomBookImage(imageUrl: bookModel.volumeInfo?.imageLinks?.thumbnail??'',),
                ),
                SizedBox(height: 43),
                Text(
                  bookModel.volumeInfo.title!,
                  style: Styles.textStyle30.copyWith(
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 6),
                Opacity(
                  opacity: .7,
                  child: Text(
                    bookModel.volumeInfo.authors![0],
                    style: Styles.textStyle18.copyWith(
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                BookRating(
                  rating: bookModel.volumeInfo.pageCount!,
                        count: bookModel.volumeInfo.pageCount!,
                  mainAxisAlignment: MainAxisAlignment.center),
                const SizedBox(height: 37),
                BookAction(),
                Expanded(child: const SizedBox(height: 50)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    'You can also like',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SimilarBooksListView(),
                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
