import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_rating.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:free_book_shelf/core/utils/app_router.dart';
import 'package:free_book_shelf/core/utils/assets.dart';
import 'package:free_book_shelf/core/utils/styles.dart';
import 'package:go_router/go_router.dart';

class BookListViewItem extends StatelessWidget {
  const BookListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){  
        GoRouter.of(context).push(AppRouter.kBookDetailsView );
      },
      child: SizedBox(
        height: 125,
        child: Row(
          children: [
            AspectRatio(
              aspectRatio: 2.5 / 4,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                    image: AssetImage(AssetsData.testImage),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .5,
                    child: Text(
                      'The Best Gifts',
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: Styles.textStyle20.copyWith(fontFamily: KGtSectraFine),
                    ),
                  ),
                  const SizedBox(height: 3),
                  Text('Mr.Abdulrazzaq', style: Styles.textStyle14),
                  const SizedBox(height: 3),
                  Row(
                    children: [
                      Text(
                        '19.99 '
                        r'$',
                        style: Styles.textStyle20.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),  
                     const Spacer(),
                     const BookRating(),
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
