import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_book_shelf/Features/home/data/repos/home_repo_impl.dart';
import 'package:free_book_shelf/Features/home/presentation/view_model/featured_books_cubit/feature_books_cubit.dart';
import 'package:free_book_shelf/Features/home/presentation/view_model/newsset_books_cubit/newset_books_cubit.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:free_book_shelf/core/utils/app_router.dart';
import 'package:free_book_shelf/core/utils/service_locator.dart';

import 'package:google_fonts/google_fonts.dart';

void main() {
  setupServiceLocator();
  runApp(const FreeBookShelf());
}

class FreeBookShelf extends StatelessWidget {
  const FreeBookShelf({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeatureBooksCubit(getIt.get<HomeRepoImpl>())..fetchFeaturedBooks(),
        ),
        BlocProvider(
          create: (context) => NewsetBooksCubit(getIt.get<HomeRepoImpl>()),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme,
          ),
        ),
      ),
    );
  }
}
