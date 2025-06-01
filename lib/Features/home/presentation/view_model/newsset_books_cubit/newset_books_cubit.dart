import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';

part 'newset_books_state.dart';

class NewsetBooksCubit extends Cubit<NewsetBooksState> {
  NewsetBooksCubit() : super(NewsetBooksInitial());

  get homeRepo => null;

  Future<void> fetchNewestdBooks() async {
    emit(NewsetBooksLoading());
    var result = await homeRepo.fetchFeatureBooks();
    result.fold(
      (failure) {
        emit(NewsetBooksFailure(errMessage: failure.errMessage));
      },
      (books) {
        emit(NewsetBooksSuccess(books: books));
      },
    );
  }
}
