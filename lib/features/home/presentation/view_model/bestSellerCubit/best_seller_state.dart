part of 'best_seller_cubit.dart';

@immutable
sealed class BestSellerState {}

final class BestSellerInitial extends BestSellerState {}


final class BestSellerLodaing extends BestSellerState {}
final class BestSellerSucsess extends BestSellerState {

final List<BookModel> books;

BestSellerSucsess({required this.books});
}
final class BestSellerFailure extends BestSellerState {

  String errorMassge;
  BestSellerFailure(this.errorMassge);

}
