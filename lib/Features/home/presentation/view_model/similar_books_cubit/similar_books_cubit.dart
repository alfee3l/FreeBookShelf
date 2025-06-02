import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/Features/home/data/repos/home_repo.dart';
part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepo) : super(SimilarBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchSimilarBooks({required String category}) async {
    emit(SimilarBooksLoading());
    var result = await homeRepo.fetchSimilarBooks(category: category);
    result.fold(
      (failure) {
        emit(SimilarBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(SimilarBooksSuccess(books: books));
      },
    );
  }
}
