
import 'package:flutter/material.dart';

import '../../../date/models/BookModel/book_model.dart';
import 'bestSeller.dart';

class BestSellerListView extends StatelessWidget {
  List<BookModel> books;
   BestSellerListView({
    required this.books

}) ;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder:
    (context,index){
      return  Padding(
        padding:  EdgeInsets.symmetric(vertical: 10),
        child:  BestSellerItem(bookModel: books[index],),
      );


    },
    itemCount: books.length,
      padding: EdgeInsets.zero,


      physics:const  NeverScrollableScrollPhysics(),

    );
  }
}
