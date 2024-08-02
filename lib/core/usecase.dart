abstract class UseCase<Type> {
  Future<Type> call();

  void saveFavQuote(String favQuote);
}
