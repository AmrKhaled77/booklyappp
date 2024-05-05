import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cached_network_image/cached_network_image.dart';
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

        child: ClipRRect(
          borderRadius: BorderRadius.circular(16),
          child: AspectRatio(
            aspectRatio: 5/7,
            child:CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:bookModel.volumeInfo!.imageLinks!.thumbnail,
              placeholder: (context, url) => Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => Icon(Icons.error),
            ),

            //Container(








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
        physics:const BouncingScrollPhysics(),




      ),
    );
  }
}