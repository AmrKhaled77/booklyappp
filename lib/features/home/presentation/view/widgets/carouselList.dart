import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/customListView.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';

class carouselList extends StatelessWidget {
   carouselList({super.key,
  required this.books,
  });

  final List<BookModel> books;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(

      options: CarouselOptions(height: 300,
        pauseAutoPlayOnTouch: true,
        aspectRatio: 1/1,



        initialPage: 0,
        viewportFraction: 0.72,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 2),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,

      ),
      items: [1,2,3,4,5,6,7].map((i) {
        return Builder(
          builder: (BuildContext context) {
            return CustomListViewItem(bookModel:books[i] );
          },
        );
      }).toList(),
    );
  }
}
