import '../../../data/models/quotes_response.dart';

class QuoteEvent {}

final class QuoteInitialEvent extends QuoteEvent {}

final class QuoteFavEvent extends QuoteEvent {
  final bool favState;
  final QuotesResponse quotesResponse;

  QuoteFavEvent({required this.quotesResponse, required this.favState});
}

final class QuoteRatingEvent extends QuoteEvent {
  final double updateRating;

  QuoteRatingEvent({required this.updateRating});
}
