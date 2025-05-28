import 'package:flutter/material.dart';
import 'package:free_book_shelf/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
   const SplashViewBody({super.key});

  @override
   Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
             children: [
              
               Image.asset(AssetsData.logo,color: Colors.white,),
               Text('Read Free Book'),
             ],
    );
  }
}