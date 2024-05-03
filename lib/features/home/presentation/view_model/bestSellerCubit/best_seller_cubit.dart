import 'package:bloc/bloc.dart';

import 'package:meta/meta.dart';

import '../../../date/models/BookModel/book_model.dart';
import '../../../date/repo/HomeRepo.dart';


part 'best_seller_state.dart';

class BestSellerCubit extends Cubit<BestSellerState> {
  BestSellerCubit(
  {required this.homeRepo}
      ) : super(BestSellerInitial());


  final HomeRepo homeRepo;


  featchBestSeller()async{
    emit(BestSellerLodaing());
   var data =await homeRepo.FetchBestSellerBooks();


   data.fold((l) => {
     emit(BestSellerFailure(l.errorMassge))
   }, (r) => {
     emit(BestSellerSucsess(books:r))
   });
  }

}
