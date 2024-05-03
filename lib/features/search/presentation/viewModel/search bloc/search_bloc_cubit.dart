import 'package:bloc/bloc.dart';
import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:booklyappp/features/search/data/repo/SearchIMPL.dart';
import 'package:booklyappp/features/search/data/repo/searchRepo.dart';
import 'package:meta/meta.dart';

part 'search_bloc_state.dart';

class SearchBlocCubit extends Cubit<SearchBlocState> {
  SearchBlocCubit() : super(SearchBlocInitial());


  final searchRepo searchrepo=SearchIMPL();

  GetData({required String key})async{
    emit(SearchBlocLodaing());

    var data =await searchrepo.GetSearchData(key: key);

    data.fold((l) => {

      emit(SearchBlocfaliur(errorMasege: l.errorMassge))

    }, (r) => {
      print("leeeeeeeeeee${r.length}"),
      emit(SearchBlocsucsses(books: r))
    });
  }
}
