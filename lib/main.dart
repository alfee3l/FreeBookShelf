import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/Splash/presentation/views/splash_view.dart';

void main() {
  runApp(const FreeBookShelf());
}

class FreeBookShelf extends StatelessWidget {
  const FreeBookShelf({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SplashView(),
    );
  }
}
