part of '../../../quote.dart';

class CustomText extends StatelessWidget {
  final String text;
  final TextStyle textStyle;
  const CustomText({super.key, required this.text, required this.textStyle});

  @override
  Widget build(BuildContext context) {
    return Text(
      key: Constants.valueTextKey,
      text,
      style: textStyle,
      overflow: TextOverflow.ellipsis,
      maxLines: 5,
      textAlign: TextAlign.center,
    );
  }
}
