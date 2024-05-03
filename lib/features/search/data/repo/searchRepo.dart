import 'package:booklyappp/core/Errors/faliuer.dart';
import 'package:booklyappp/core/services/apiServices.dart';
import 'package:dartz/dartz.dart';
import '../../../home/date/models/BookModel/book_model.dart';


abstract class searchRepo {



  Future<Either<Failure,List<BookModel>>> GetSearchData({ required String key});

 
}