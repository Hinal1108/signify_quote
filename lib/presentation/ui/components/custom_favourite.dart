part of '../../../quote.dart';

class CustomFavourite extends StatelessWidget {
  final AsyncSnapshot<QuoteFavState> snapshot;
  const CustomFavourite({super.key, required this.snapshot});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Constants.valueFavouriteKey,
      child: GestureDetector(
        onTap: () {
          BlocProvider.of<QuoteBloc>(context).add(QuoteFavEvent(
              favState: snapshot.hasData ? !snapshot.data!.favState : true));
        },
        child: Icon(
          snapshot.hasData
              ? snapshot.data?.favState == false
                  ? Icons.favorite_border_rounded
                  : Icons.favorite
              : Icons.favorite_border_rounded,
          size: 40.0,
          color: Colors.red,
        ),
      ),
    );
  }
}
