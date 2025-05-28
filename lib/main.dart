import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/Splash/presentation/views/splash_view.dart';
import 'package:free_book_shelf/constans.dart';
import 'package:get/get.dart';

void main() {
  runApp(const FreeBookShelf());
}

class FreeBookShelf extends StatelessWidget {
  const FreeBookShelf({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor:kPrimaryColor,
      ),
      home: const SplashView(),
    );
  }
}
