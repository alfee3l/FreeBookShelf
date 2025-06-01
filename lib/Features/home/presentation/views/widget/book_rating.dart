import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:free_book_shelf/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({
    super.key,
    this.mainAxisAlignment = MainAxisAlignment.start, required this.rating, required this.count,
  });
  final MainAxisAlignment mainAxisAlignment;
  final int rating;
  final int count;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: [
        Icon(FontAwesomeIcons.solidStar, size: 14, color: Color(0xffF4DB51)),
        SizedBox(width: 6.3),
        Text(rating.toString(), style: Styles.textStyle16),
        SizedBox(width: 5),
        Opacity(opacity: .5, child: Text('($count)', style: Styles.textStyle14)),
      ],
    );
  }
}
