
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../date/models/BookModel/book_model.dart';
import '../../date/repo/homeRepoIMPL.dart';
import '../view_model/bestSellerCubit/best_seller_cubit.dart';
import '../view_model/simiilerBooksCubit/similler_books_cubit.dart';
import 'BookDeatailsBody.dart';

class BookDetails extends StatelessWidget {
  const BookDetails({Key? key
  ,required this.bookModel


  }) ;
final BookModel bookModel;
  @override
  Widget build(BuildContext context) {


    return  BlocProvider<SimillerBooksCubit>(
      create: (BuildContext context) {return SimillerBooksCubit(homeRepo: HomeRepoImpl())..FeatchSimillerData(
        category: bookModel.volumeInfo.categories![0]

      ); },
      child: Scaffold(
        body: SingleChildScrollView(child: BookDetailsBody(bookModel:bookModel )),
      ),
    );
  }
}
