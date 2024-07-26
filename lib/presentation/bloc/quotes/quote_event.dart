class QuoteEvent {}

final class QuoteInitialEvent extends QuoteEvent {}

final class QuoteFavEvent extends QuoteEvent {
  final bool favState;

  QuoteFavEvent({required this.favState});
}

final class QuoteRatingEvent extends QuoteEvent {
  final double updateRating;

  QuoteRatingEvent({required this.updateRating});
}
