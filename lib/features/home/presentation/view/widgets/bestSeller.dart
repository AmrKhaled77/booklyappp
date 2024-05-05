
import 'package:booklyappp/core/utills/appRouter.dart';
import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:go_router/go_router.dart';

class BestSellerItem extends StatelessWidget {
  BookModel? bookModel;
 BestSellerItem({
     this.bookModel

}) ;

@override
Widget build(BuildContext context) {
  return  GestureDetector(
    onTap: (){
      GoRouter.of(context).push(appRouter.KbookDetailsPath,extra: bookModel);
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height*0.15,
          child: AspectRatio(
            aspectRatio: 5/7,
            child: CachedNetworkImage(
              fit: BoxFit.fill,
              imageUrl:bookModel!.volumeInfo!.imageLinks!.thumbnail,
              placeholder: (context, url) => const Center(child: CircularProgressIndicator()),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
          ),
        ),
        const SizedBox(width: 30,),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width*.55,
                child:  Text(bookModel!.volumeInfo!.title!,maxLines: 2,

                  overflow: TextOverflow.ellipsis,
                  style:const TextStyle(
                    color: Colors.white,
                    fontSize: 16,


                    overflow: TextOverflow.ellipsis,
                  )

                  ,),
              ),
               const SizedBox(height: 8.0,),

              const SizedBox(height: 10,),

              Container(

                width: double.infinity,
                child:  Row(
                  children: [
                     const Text('Free',style: TextStyle(fontWeight: FontWeight.bold),),
                    SizedBox(width: MediaQuery.of(context).size.width*0.2 ,),
                     Rating(bookModel:bookModel! ,),


                  ],
                ),
              )



            ],
          ),
        ),
      ],
    ),
  );
}
}

class Rating extends StatelessWidget {
  const Rating({super.key,
     this.mainAxisAlignment=MainAxisAlignment.start,
    required this.bookModel



  }) ;
  final BookModel bookModel;
final MainAxisAlignment mainAxisAlignment;
  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment:mainAxisAlignment ,

      children:  [
         const Icon(Icons.star
        ,color: Color(0xffFFDD4F),
        ),
        Text(bookModel.volumeInfo.averageRating != null?  (bookModel.volumeInfo.averageRating).toString() : "0",


          style: const TextStyle(
          color: Colors.white
        ),),
        const SizedBox(width: 3,),

        Text(
          bookModel.volumeInfo.ratingsCount != null?  "(${(bookModel.volumeInfo.averageRating).toString()})" : "(0)"
    ,style: const TextStyle(
          color: Colors.white24
        ),),

      ],
    );
  }
}
