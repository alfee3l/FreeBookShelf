import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/Features/home/data/repos/home_repo.dart';

part 'feature_books_state.dart';

class FeatureBooksCubit extends Cubit<FeatureBooksState> {
  FeatureBooksCubit(this.homeRepo) : super(FeatureBooksInitial());
  final HomeRepo homeRepo;


  Future<void> fetchFeaturedBooks()async{

    emit(FeatureBooksLoading());
  var result =  await homeRepo.fetchFeatureBooks();
  result.fold((failure){
     emit(FeatureBooksFailures(errMessage: failure.errMessage));
  }, (books){ 
    emit(FeatureBooksSuccess(books: books));

  });





  }
}
