part of '../../../quote.dart';

class CustomRatingBar extends StatelessWidget {
  final double ratingValue;
  const CustomRatingBar({super.key, required this.ratingValue});

  @override
  Widget build(BuildContext context) {
    return Container(
      key: Constants.valueRatingKey,
      child: RatingBarIndicator(
        rating: ratingValue,
        itemBuilder: (context, index) => GestureDetector(
          onTap: () {
            BlocProvider.of<QuoteBloc>(context)
                .add(QuoteRatingEvent(updateRating: index + 1));
          },
          child: const Icon(
            Icons.star,
            color: Colors.amber,
          ),
        ),
        itemCount: 5,
        itemSize: 40.0,
        direction: Axis.horizontal,
        unratedColor: Colors.grey,
      ),
    );
  }
}
