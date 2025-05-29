import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/best_seller_list_view.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/featured_Bbooks_list_view.dart';

import 'package:free_book_shelf/core/utils/styles.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: CustomAppBar(),
              ),
              FeaturedBooksListView(),
              SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Text('Best Seller', style: Styles.textStyle18),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
       const SliverFillRemaining(child: Padding(
          padding:  EdgeInsets.symmetric(horizontal: 30),
          child: BestSellerListView(),
        )),
      ],
    );
  }
}
