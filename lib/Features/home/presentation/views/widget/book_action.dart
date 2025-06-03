import 'package:flutter/material.dart';
import 'package:free_book_shelf/Features/home/data/models/book_model/book_model.dart';
import 'package:free_book_shelf/core/utils/Functions/launch_url.dart';
import 'package:free_book_shelf/core/widget/custom_button.dart';
import 'package:url_launcher/url_launcher.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key, required this.bookModel});

  final BookModel bookModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Expanded(
            child: CustomButton(
              text: '19.99',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16),
                bottomLeft: Radius.circular(16),
              ),
            ),
          ),
          Expanded(
            child: CustomButton(
              onPressed: ()  {
              launchCustomUrl(context, bookModel.volumeInfo.previewLink);
              },
              fontSize: 16,
              text: getText(bookModel),
              backgroundColor: Color(0xffDF7562),
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                topRight: Radius.circular(16),
                bottomRight: Radius.circular(16),
              ),
            ),
          ),
        ],
      ),
    );
  }

  String getText(BookModel bookModel) {
    if (bookModel.volumeInfo.previewLink == null) {
      return 'Not Avaliable';
    } else {
      return 'Preview';
    }
  }
}
