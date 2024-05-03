import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../../date/models/BookModel/book_model.dart';
import '../../../date/repo/HomeRepo.dart';

part 'similler_books_state.dart';

class SimillerBooksCubit extends Cubit<SimillerBooksState> {
  SimillerBooksCubit({
    required this.homeRepo
}) : super(SimillerBooksInitial());


  HomeRepo homeRepo;

  FeatchSimillerData({ required String category})async{
    emit(SimillerBooksLoading()  );

    var result = homeRepo.FetchSimillerBooks(category: category);



    result.then((value) => {
      value.fold((l) => {
        emit(SimillerBooksfailure(errorMassge: l.errorMassge) )

      }, (r) => {
        emit(SimillerBookssucsess(books: r) )
      })


    });





  }

}
