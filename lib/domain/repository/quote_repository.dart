part of '../../quote.dart';

abstract class QuoteRepository {
  Future<QuotesResponse> fetchQuotes();
}
