part of 'feature_books_cubit.dart';

sealed class FeatureBooksState extends Equatable {
  const FeatureBooksState();

  @override
  List<Object> get props => [];
}

final class FeatureBooksInitial extends FeatureBooksState {}

final class FeatureBooksLoading extends FeatureBooksState {}

final class FeatureBooksFailures extends FeatureBooksState {
  final String errMessage;

  const FeatureBooksFailures({required this.errMessage});
}

final class FeatureBooksSuccess extends FeatureBooksState {
  final List<BookModel> books;

  const FeatureBooksSuccess({required this.books});
}
