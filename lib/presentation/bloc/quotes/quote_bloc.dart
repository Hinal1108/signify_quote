part of '../../../quote.dart';

class QuoteBloc extends Bloc<QuoteEvent, QuoteState> {
  final QuoteUseCase quoteUseCase;

  final quoteFavStateStreamController = StreamController<QuoteFavState>();
  Stream<QuoteFavState> get quoteFavStreamState =>
      quoteFavStateStreamController.stream;

  final quoteRatingStateStreamController = StreamController<QuoteRatingState>();
  Stream<QuoteRatingState> get quoteRatingStreamState =>
      quoteRatingStateStreamController.stream;

  StreamSubscription? streamSubscription;

  QuoteBloc({required this.quoteUseCase}) : super(QuoteInitialState()) {
    on<QuoteInitialEvent>(_getRandomQuotes);
    on<QuoteFavEvent>(_updateFavValue);
    on<QuoteRatingEvent>(_updateRatingValue);
    streamSubscription ??=
        Stream.periodic(const Duration(seconds: 10), (_) => _).listen(
            (_) => add(QuoteInitialEvent()),
            onError: (error) => debugPrint("Error in Subscription $error"));
  }

  Future<void> _getRandomQuotes(
      QuoteInitialEvent event, Emitter<QuoteState> emit) async {
    try {
      quoteFavStateStreamController.sink.add(QuoteFavState(favState: false));
      quoteRatingStateStreamController.sink
          .add(QuoteRatingState(updateRating: 1.0));

      QuotesResponse quotesResponse = await quoteUseCase.call();
      if (quotesResponse.content != null) {
        emit(QuoteSuccessState(quotesResponse: quotesResponse));
      } else {
        emit(QuoteErrorState());
      }
    } catch (ex) {
      debugPrint('_getRandomQuotes ex ===> $ex');
      emit(QuoteErrorState());
    }
  }

  FutureOr<void> _updateFavValue(
      QuoteFavEvent event, Emitter<QuoteState> emit) {
    quoteFavStateStreamController.sink
        .add(QuoteFavState(favState: event.favState));
    String favQuote = json.encode(event.quotesResponse);
    quoteUseCase.saveFavQuote(favQuote);
  }

  FutureOr<void> _updateRatingValue(
      QuoteRatingEvent event, Emitter<QuoteState> emit) {
    quoteRatingStateStreamController.sink
        .add(QuoteRatingState(updateRating: event.updateRating));
  }

  @override
  Future<void> close() async {
    streamSubscription?.cancel();
    quoteFavStateStreamController.close();
    quoteRatingStateStreamController.close();
    super.close();
  }
}
