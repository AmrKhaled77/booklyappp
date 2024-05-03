import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:flutter/material.dart';

import '../../../date/models/BookModel/book_model.dart';
import 'package:go_router/go_router.dart';

class CustomListViewItem extends StatelessWidget {


 final BookModel bookModel;
   CustomListViewItem({
    required this.bookModel

}) ;

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
      onTap: (){
        GoRouter.of(context).push(appRouter.KbookDetailsPath,extra: bookModel);
      },
      child: SizedBox(

        child: AspectRatio(
          aspectRatio: 5/7,
          child: Container(



            decoration:  BoxDecoration(

                borderRadius: BorderRadius.circular(15),


                image:  DecorationImage(image: NetworkImage(bookModel.volumeInfo!.imageLinks!.thumbnail),
                    fit: BoxFit.fill
                )
            ),




          ),
        ),
      ),
    );
  }
}

class CustomListViewList extends StatelessWidget {
  List<BookModel> Books;

   CustomListViewList( {super.key,
    required this.Books



  }) ;


  Widget build(BuildContext context) {
    return  Container(
      height: MediaQuery.of(context).size.height*0.25 ,
      child: ListView.builder(itemBuilder:
          (context ,index){
        return  Padding(
          padding: const EdgeInsets.only( right: 6.0),
          child:  CustomListViewItem(bookModel: Books[index],),
        );

      },itemCount: Books.length,
        scrollDirection: Axis.horizontal,
        shrinkWrap: true,


      ),
    );
  }
}