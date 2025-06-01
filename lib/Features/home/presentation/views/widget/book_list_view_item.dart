import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/volume_info.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_rating.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:free_book_shelf/core/utils/app_router.dart';
import 'package:free_book_shelf/core/utils/assets.dart';
import 'package:free_book_shelf/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key, required this.bookModel});
final BookModel  bookModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        GoRouter.of(context).push(AppRouter.kBookDetailsView);
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
           CustomBookImage(imageUrl: bookModel.volumeInfo.imageLinks.thumbnail),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                     bookModel.volumeInfo.title!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(
                        fontFamily: KGtSectraFine,
                      ),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text(bookModel.volumeInfo.authors![0], style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        'Free',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const Spacer(),
                       BookRating(
                        rating: bookModel.volumeInfo.pageCount!,
                        count: bookModel.volumeInfo.pageCount!,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
