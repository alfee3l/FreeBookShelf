import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_book_shelf/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

            children: [
             Icon(
               FontAwesomeIcons.solidStar,
               color: Color(0xffF4DB51),
             ),
              SizedBox(
              width: 6.3,
             ),
             Text('4.8',style: Styles.textStyle16,),
              SizedBox(
              width: 5,
             ),
             Text('(3457)',style: Styles.textStyle14.copyWith(
              color: Color(0xff7D7D7D),
             ),),
            ],
    );
  }
}