import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_list_view_item.dart';
import 'package:free_book_shelf/Features/search/presentation/view/widget/custom_search_text_field.dart';
import 'package:free_book_shelf/core/utils/styles.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        CustomSearchTextField(),
         SizedBox(height: 16,),
         Text('Search Result', style: Styles.textStyle18),
            SizedBox(height: 16,),
        Expanded(child: SearchResultListView()),
        
        ]),
    );
  }
}



class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
        padding: EdgeInsets.zero,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: BookListViewItem(),
          );
        },
      );
  }
}