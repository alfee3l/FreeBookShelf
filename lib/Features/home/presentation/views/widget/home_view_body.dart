import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/featured_Bbooks_list_view.dart';
import 'package:free_book_shelf/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          CustomAppBar(),
          FeaturedBooksListView(),
          SizedBox(height: 50,),
          Text('Best Seller',style: Styles.titleMedium,)
        ],
      ),
    );
  }
}
