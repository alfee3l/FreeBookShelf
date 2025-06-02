import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_book_shelf/Features/Splash/presentation/views/splash_view.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/Features/home/data/repos/home_repo.dart';
import 'package:free_book_shelf/Features/home/data/repos/home_repo_impl.dart';
import 'package:free_book_shelf/Features/home/presentation/view_model/similar_books_cubit/similar_books_cubit.dart';
import 'package:free_book_shelf/Features/home/presentation/views/book_details_view.dart';
import 'package:free_book_shelf/Features/home/presentation/views/home_view.dart';
import 'package:free_book_shelf/Features/search/presentation/view/search_view.dart';
import 'package:free_book_shelf/core/utils/service_locator.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => SplashView()),
      GoRoute(path: kHomeView, builder: (context, state) => HomeView()),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => BlocProvider(
          create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>()),
          child:  BookDetailsView(
            bookModel: state.extra as BookModel,
          ),
        ),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
