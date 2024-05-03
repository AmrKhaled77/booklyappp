
import 'dart:ffi';

import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../../date/models/BookModel/book_model.dart';
import '../../../date/repo/HomeRepo.dart';


part 'featuerd_books_state.dart';

class FeatuerdBooksCubit extends Cubit<FeatuerdBooksState> {
  FeatuerdBooksCubit({
    required this.homeRepo
}) : super(FeatuerdBooksInitial());

   HomeRepo homeRepo;


      FeatchData()async{
    emit(FeatuerdBooksLoading()  );

    var result = homeRepo.FetchAllBooks();

    

    result.then((value) => {
      value.fold((l) => {
        emit(FeatuerdBooksfailure(errorMassge: l.errorMassge) )

      }, (r) => {
        emit(FeatuerdBookssucsess(books: r) )
      })


    });





  }
}
