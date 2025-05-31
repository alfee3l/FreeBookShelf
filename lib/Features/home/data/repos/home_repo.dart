import 'package:dartz/dartz.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/core/errors/failures.dart';

abstract class HomeRepo{
 Future<Either<Failures,List<BookModel>>> fetchNewsetBooks();
  Future<Either<Failures,List<BookModel>>>fetchFeatureBooks();
}