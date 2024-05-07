
import 'package:booklyappp/core/services/apiServices.dart';
import 'package:booklyappp/features/home/date/models/BookModel/book_model.dart';
import 'package:booklyappp/features/home/date/repo/HomeRepo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../core/Errors/faliuer.dart';

class HomeRepoImpl  implements HomeRepo{

  final ApiServices apiServices=ApiServices();
  @override
  Future<Either<Failure, List<BookModel>>> FetchAllBooks() async {

   try {
     var response =await apiServices.get(endPoints: '/volumes?q= flutter');
     List<BookModel> books=[];

     for (var book in response.data['items'] ){


       books.add(BookModel.fromJson(book));

     }

     return Right(books);

   }  catch (e) {


     if (e is DioError){
       return Left(servasicesFailure.FromDio(e));
     }
     return left(servasicesFailure(errorMassge: e.toString()));


     
   }

  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchBestSellerBooks() async{
    try {
      var response =await apiServices.get(endPoints: '/volumes?Filtering=free-ebooks&q=computer Scince');
      List<BookModel> books=[];

      for (var book in response.data['items'] ){

        books.add(BookModel.fromJson(book));
      }
      return Right(books);

    }  catch (e) {
      if (e is DioError){
        return Left(servasicesFailure.FromDio(e));
      }
      return left(servasicesFailure(errorMassge: e.toString()));



    }



  }

  @override
  Future<Either<Failure, List<BookModel>>> FetchSimillerBooks({required String category}) async{
    try {
      var response =await apiServices.get(endPoints: '/volumes?Filtering=free-ebooks&q= ${category}');
      List<BookModel> books=[];

      for (var book in response.data['items'] ){

        books.add(BookModel.fromJson(book));
      }
      return Right(books);

    }  catch (e) {
      if (e is DioError){
        return Left(servasicesFailure.FromDio(e));
      }
      return left(servasicesFailure(errorMassge: e.toString()));



    }



  }

  }

