import 'package:dartz/dartz.dart';

import '../../../../core/Errors/faliuer.dart';
import '../models/BookModel/book_model.dart';

abstract class HomeRepo{

   Future<Either<Failure,List<BookModel>>> FetchAllBooks();
   Future<Either<Failure,List<BookModel>>> FetchBestSellerBooks();
   Future<Either<Failure,List<BookModel>>> FetchSimillerBooks({required String category});

}