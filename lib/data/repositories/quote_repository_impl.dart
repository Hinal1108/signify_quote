part of '../../quote.dart';

class QuoteRepositoryImpl implements QuoteRepository {
  final ApiClient _api;
  final SharedPreferences _sharedPreferences;

  QuoteRepositoryImpl(
      {required ApiClient api, required SharedPreferences sharedPreferences})
      : _api = api,
        _sharedPreferences = sharedPreferences;
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

  @override
  void saveFavQuotes(String favQuote) {
    _sharedPreferences.setString(Constants.favQuoteSharedPref, favQuote);
  }
}
