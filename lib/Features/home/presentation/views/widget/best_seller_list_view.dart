import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_book_shelf/Features/home/presentation/view_model/newsset_books_cubit/newset_books_cubit.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/book_list_view_item.dart';
import 'package:free_book_shelf/core/widget/custom_error_widget.dart';
import 'package:free_book_shelf/core/widget/custom_loading_indicator.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: BlocBuilder<NewsetBooksCubit, NewsetBooksState>(
        builder: (context, state) {
          if (state is NewsetBooksSuccess) {
            return ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              padding: EdgeInsets.zero,
              itemCount: state.books.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: BookListViewItem(bookModel: state.books[index],),
                );
              },  
            );
          }else if (state is NewsetBooksFailure){
            return CustomErrorWidget(errMessage: state.errMessage);
          }else{
            return const CustomLoadingIndicator();
          }
        },
      ),
    );
  }
}
