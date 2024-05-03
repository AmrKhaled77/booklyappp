
import 'package:booklyappp/core/Errors/faliuer.dart';
import 'package:booklyappp/core/services/apiServices.dart';
import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:booklyappp/features/search/data/repo/searchRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class SearchIMPL implements searchRepo{
  final ApiServices apiServices=ApiServices();
  @override
  Future<Either<Failure, List<BookModel>>> GetSearchData({required String key})async {



    try {
      var responce= await apiServices.get(endPoints: '/volumes?Filtering=free-ebooks&q=${key}');
      List<BookModel> books=[];

      for (var item in responce.data['items']){

        books.add(BookModel.fromJson(item));


      }
      return Right(books);
    } on Exception catch (e) {
      if (e is DioError){
        return Left(servasicesFailure.FromDio(e));
      }
      return left(servasicesFailure(errorMassge: e.toString()));
    }





  }








}