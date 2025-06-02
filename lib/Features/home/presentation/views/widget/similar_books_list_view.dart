import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_book_shelf/Features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_image.dart';
import 'package:free_book_shelf/core/widget/custom_error_widget.dart';
import 'package:free_book_shelf/core/widget/custom_loading_indicator.dart';

class SimilarBooksListView extends StatelessWidget {
  const SimilarBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * .15,
            child: ListView.builder(
              itemCount: state.books.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),

                  child: CustomBookImage(
                    imageUrl:
                    state.books[index].volumeInfo.imageLinks?.thumbnail??'',
                  ),
                );
              },
            ),
          );
        }else if (state is SimilarBooksFailure){
          return CustomErrorWidget(errMessage: state.errMessage);
        }else{
          return const  CustomLoadingIndicator();
        }
      },
    );
  }
}
