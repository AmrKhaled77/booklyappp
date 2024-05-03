part of 'similler_books_cubit.dart';

@immutable
sealed class SimillerBooksState {}

final class SimillerBooksInitial extends SimillerBooksState {}
class SimillerBooksLoading extends SimillerBooksState{

}

class SimillerBookssucsess extends SimillerBooksState{

final List<BookModel> books;

SimillerBookssucsess({required this.books});
}

class SimillerBooksfailure extends SimillerBooksState{
final String errorMassge;

SimillerBooksfailure({required this.errorMassge});

}