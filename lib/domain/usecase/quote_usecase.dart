part of '../../quote.dart';

class QuoteUseCase implements UseCase<QuotesResponse> {
  final QuoteRepository _quoteRepository;

  QuoteUseCase({required QuoteRepository quoteRepository})
      : _quoteRepository = quoteRepository;

  @override
  Future<QuotesResponse> call() {
    return _quoteRepository.fetchQuotes();
  }

  @override
  void saveFavQuote(String favQuote) {
    _quoteRepository.saveFavQuotes(favQuote);
  }
}
