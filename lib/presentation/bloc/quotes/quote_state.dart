part of '../../../quote.dart';

class QuoteState {}

final class QuoteInitialState extends QuoteState {}

final class QuoteSuccessState extends QuoteState {
  final QuotesResponse quotesResponse;

  QuoteSuccessState({required this.quotesResponse});
}

final class QuoteErrorState extends QuoteState {}

final class QuoteFavState extends QuoteState {
  final bool favState;

  QuoteFavState({required this.favState});
}

final class QuoteRatingState extends QuoteState {
  final double updateRating;

  QuoteRatingState({required this.updateRating});
}
