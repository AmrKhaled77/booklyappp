
import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/CustomBookDetilsAppBar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'bestSeller.dart';
import 'customListView.dart';

class Detils extends StatelessWidget {
  final BookModel bookModel;
  const Detils({Key? key
     ,
     required this.bookModel}
      ) ;

  @override
  Widget build(BuildContext context) {
    print(bookModel.id);
    return   Padding(
      padding:  const EdgeInsets.symmetric(horizontal: 30),
      child:  Column(
        children: [
          const AppBarBookDetails(),
          const SizedBox(height: 40,),
          Padding(
            padding:  const EdgeInsets.symmetric(horizontal: 106-30),
            child: CustomListViewItem(bookModel: bookModel),
          ),
          const SizedBox(height: 30,),


           Text(bookModel.volumeInfo.title!,style: const TextStyle(
              color: Colors.white
              ,fontSize: 22,
              fontWeight: FontWeight.bold
          ),),
          const SizedBox(height: 10,),

           Text(bookModel.volumeInfo.authors![0],style: const TextStyle(
              color: Colors.white24
              ,fontSize: 16
          ),),

          const SizedBox(height: 10,),
          const Rating(mainAxisAlignment: MainAxisAlignment.center,),







        ],
      ),
    );;
  }
}