import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/Splash/presentation/views/splash_view.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:free_book_shelf/core/utils/app_router.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const FreeBookShelf());
}

class FreeBookShelf extends StatelessWidget {
  const FreeBookShelf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(ThemeData.dark().textTheme),
      ),
    );
  }
}
