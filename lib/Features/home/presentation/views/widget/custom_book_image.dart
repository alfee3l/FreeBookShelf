
import 'package:flutter/material.dart';
import 'package:free_book_shelf/core/utils/assets.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio:2.7/4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          image: DecorationImage(image: AssetImage(AssetsData.testImage),
             fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
