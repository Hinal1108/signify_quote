part of '../../../quote.dart';

class FavQuotes extends StatelessWidget {
  const FavQuotes({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return const ListTile(
            title: Text(''),
          );
        });
  }
}
