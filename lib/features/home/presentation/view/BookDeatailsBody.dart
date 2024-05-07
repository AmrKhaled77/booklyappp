
import 'package:booklyappp/features/home/presentation/view/widgets/BookDeatails.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/boxAction.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/customListView.dart';
import 'package:booklyappp/features/home/presentation/view/widgets/skelton.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/widgets/widgets.dart';
import '../../date/models/BookModel/book_model.dart';
import '../view_model/simiilerBooksCubit/similler_books_cubit.dart';
import 'widgets/CustomBookDetilsAppBar.dart';

class BookDetailsBody extends StatelessWidget {

  final BookModel bookModel;

   const BookDetailsBody({Key? key
   ,required this.bookModel
   }) ;

  @override
  Widget build(BuildContext context) {
    return   Column(
      crossAxisAlignment: CrossAxisAlignment.start,
       children: [
          Detils(
            bookModel:  bookModel,
          ),
         Padding(
           padding: const EdgeInsets.all(28.0),
           child: CustomButton(bookModel: bookModel,),
         ),
         const SizedBox(height: 5,),
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 30,vertical: 15),
           child: Text("You can also like",style: TextStyle(

             color: Colors.white,
             fontSize: 16,
             fontWeight: FontWeight.bold
           ),

           ),
         ),
          SizedBox(
             height: 150,

             child: Padding(
               padding: const EdgeInsets.only(left: 30),
               child: BlocBuilder<SimillerBooksCubit, SimillerBooksState>(

                   builder: (BuildContext context, state) {

                     if(state is SimillerBookssucsess){
                       print(state.books.length);
                       return CustomListViewList(Books: state.books);
    } else if(state is SimillerBooksfailure){
                       return Center(child: Text(state.errorMassge),);
    }else

    {return Center(
      child: CircularProgressIndicator(),
    );

                     }
    },

             )),)




       ],
    );
  }
}










