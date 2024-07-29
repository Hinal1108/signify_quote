part of '../../quote.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final ApiClient _api;

  QuoteRepositoryImpl({required ApiClient api}) : _api = api;
  @override
  Future<QuotesResponse> fetchQuotes() async {
    try {
      Response response = await _api.sendRequest.get(ApiConstants.quoteApiPath);
      if (response.statusCode == 200) {
        QuotesResponse quotesResponse = QuotesResponse.fromJson(response.data);
        return quotesResponse;
      } else {
        final String response =
            await rootBundle.loadString(JsonPathConstants.quoteSchema);
        final data = await json.decode(response);
        QuotesResponse quotesResponse = QuotesResponse.fromJson(data);
        return quotesResponse;
      }
    } catch (e) {
      final String response =
          await rootBundle.loadString(JsonPathConstants.quoteSchema);
      final data = await json.decode(response);
      QuotesResponse quotesResponse = QuotesResponse.fromJson(data);
      return quotesResponse;
    }
  }
}
