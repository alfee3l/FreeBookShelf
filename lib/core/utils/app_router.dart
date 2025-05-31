import 'package:free_book_shelf/Features/Splash/presentation/views/splash_view.dart';
import 'package:free_book_shelf/Features/home/presentation/views/book_details_view.dart';
import 'package:free_book_shelf/Features/home/presentation/views/home_view.dart';
import 'package:free_book_shelf/Features/search/presentation/view/search_view.dart';
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
        builder: (context, state) => BookDetailsView(),
      ),
      GoRoute(path: kSearchView, builder: (context, state) => SearchView()),
    ],
  );
}
