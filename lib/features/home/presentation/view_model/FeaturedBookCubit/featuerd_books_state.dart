part of 'featuerd_books_cubit.dart';

@immutable
sealed class FeatuerdBooksState {}

final class FeatuerdBooksInitial extends FeatuerdBooksState {}


class FeatuerdBooksLoading extends FeatuerdBooksState{

}

class FeatuerdBookssucsess extends FeatuerdBooksState{

  final List<BookModel> books;

  FeatuerdBookssucsess({required this.books});
}

class FeatuerdBooksfailure extends FeatuerdBooksState{
  final String errorMassge;

  FeatuerdBooksfailure({required this.errorMassge});

}
