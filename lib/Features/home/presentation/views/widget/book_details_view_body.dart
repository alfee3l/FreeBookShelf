import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_detail_app_Bar.dart';
import 'package:free_book_shelf/Features/home/presentation/views/widget/custom_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width =MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child:  Column(children: [
        CustomBookDetailsAppBar(),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: width * .15),
          child: CustomBookImage(),
        ),
        ]),
    );
  }
}
