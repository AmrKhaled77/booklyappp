import 'package:flutter/cupertino.dart';

import '../../../../home/date/models/BookModel/book_model.dart';
import '../../../../home/presentation/view/widgets/bestSeller.dart';

class customSearchresult extends StatelessWidget {

   customSearchresult({Key? key,
    required this.books

   }) ;
   final List<BookModel> books;

  @override
  Widget build(BuildContext context) {
    return  ListView.builder(itemBuilder:
        (context,index){
      return  Padding(
        padding:  const EdgeInsets.symmetric(vertical: 10),
        child:  BestSellerItem(bookModel: books![index],),
      );


    },
      itemCount: books!.length,
      padding: EdgeInsets.zero,




    );
  }
}