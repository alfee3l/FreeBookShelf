import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_appBar.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_list_view_item.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/featured_Bbooks_list_view.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:free_book_shelf/core/utils/assets.dart';
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
          Text('Best Seller',style: Styles.textStyle18,),
          BestSellerListViewItem(),
        ],
      ),
    );
  }
}




class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 125,
      child: Row(
        children: [
         AspectRatio(
        aspectRatio:2.5/4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(image: AssetImage(AssetsData.testImage),
               fit: BoxFit.fill,
            ),
          ),
        ),
         ),

         Column(
          children: [
           

          ],
         )
        ],  
      ),
    );
  }
}
