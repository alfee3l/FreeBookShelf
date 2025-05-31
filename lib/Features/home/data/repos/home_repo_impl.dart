import 'package:dartz/dartz.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/Features/home/data/repos/home_repo.dart';
import 'package:free_book_shelf/core/errors/failures.dart';
import 'package:free_book_shelf/core/utils/api_service.dart';

class HomeRepoImpl extends HomeRepo {
  final ApiService apiService;
  HomeRepoImpl(this.apiService);
  @override
  Future<Either<Failures, List<BookModel>>> fetchNewsetBooks()async {
  try {
  var data = await apiService.get(endPoint: 'volumes?Filtering=free-ebooks&q=subject:Programming&Sorting=newest');
   List<BookModel> books =[];
   for (var item in data['items']) {
    books.add(BookModel.fromJson(item));
    
   }
   return right(books);

}  catch (e) {
  return left(ServerFailure());
}
  }

  @override
  Future<Either<Failures, List<BookModel>>> fetchFeatureBooks() {
    // TODO: implement fetchFeatureBooks
    throw UnimplementedError();
  }
}
