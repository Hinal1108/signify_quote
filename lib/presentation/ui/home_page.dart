part of '../../quote.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Center(
        child: BlocListener<InternetBloc, InternetState>(
          listener: (context, state) {
            if (state is InternetGainedState) {
              var snackBar = const SnackBar(
                content: Text("Internet connected!"),
                backgroundColor: Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            if (state is InternetLostState) {
              var snackBar = const SnackBar(
                  content: Text("Internet not connected!"),
                  backgroundColor: Colors.red);
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
          },
          child: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,
              colors: [
                Colors.black26,
                Colors.grey,
              ],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Icon(
                  Icons.format_quote_rounded,
                  size: 180.0,
                  color: Colors.white,
                ),
                const SizedBox(
                  height: 50.0,
                ),
                BlocBuilder<QuoteBloc, QuoteState>(
                  builder: (context, state) {
                    if (state is QuoteSuccessState) {
                      return Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 400,
                                padding: const EdgeInsets.all(8.0),
                                width: MediaQuery.sizeOf(context).width,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(15.0),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Colors.grey.withOpacity(0.5),
                                        spreadRadius: 5,
                                        blurRadius: 7,
                                        offset: const Offset(0, 3),
                                      ),
                                    ],
                                    color: Colors.white),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      StreamBuilder(
                                          stream: BlocProvider.of<QuoteBloc>(
                                                  context)
                                              .quoteFavStreamState,
                                          builder: (context, snapshot) {
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.end,
                                              children: [
                                                GestureDetector(
                                                  onTap: () {
                                                    BlocProvider.of<QuoteBloc>(
                                                            context)
                                                        .add(QuoteFavEvent(
                                                            favState: snapshot
                                                                    .hasData
                                                                ? !snapshot
                                                                    .data!
                                                                    .favState
                                                                : true));
                                                  },
                                                  child: Icon(
                                                    snapshot.hasData
                                                        ? snapshot.data
                                                                    ?.favState ==
                                                                false
                                                            ? Icons
                                                                .favorite_border_rounded
                                                            : Icons.favorite
                                                        : Icons
                                                            .favorite_border_rounded,
                                                    size: 40.0,
                                                    color: Colors.red,
                                                  ),
                                                ),
                                              ],
                                            );
                                          }),
                                      Text(
                                        state.quotesResponse.content ??
                                            "Everyone thinks of changing the world, but no one thinks of changing himself.the world, but no one thinks of changing himself.",
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 27,
                                          fontFamily: 'monospace',
                                        ),
                                        overflow: TextOverflow.ellipsis,
                                        maxLines: 5,
                                        textAlign: TextAlign.center,
                                      ),
                                      Text(
                                        state.quotesResponse.author ??
                                            "Leo Tolstoy",
                                        style: const TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87,
                                          fontFamily: 'serif',
                                        ),
                                      ),
                                      StreamBuilder(
                                          stream: BlocProvider.of<QuoteBloc>(
                                                  context)
                                              .quoteRatingStreamState,
                                          builder: (context, snapshot) {
                                            debugPrint(
                                                'snapshot ===> ${snapshot.data?.updateRating}');
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                RatingBarIndicator(
                                                  rating: snapshot
                                                          .data?.updateRating ??
                                                      1,
                                                  itemBuilder:
                                                      (context, index) =>
                                                          GestureDetector(
                                                    onTap: () {
                                                      BlocProvider.of<
                                                                  QuoteBloc>(
                                                              context)
                                                          .add(QuoteRatingEvent(
                                                              updateRating:
                                                                  index + 1));
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
                                              ],
                                            );
                                          }),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.end,
                                        children: [
                                          GestureDetector(
                                            onTap: () {
                                              Share.share(state
                                                  .quotesResponse.content
                                                  .toString());
                                            },
                                            child: const Icon(
                                              Icons.share_rounded,
                                              size: 30.0,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    } else {
                      return const Center(
                        child: CircularProgressIndicator(),
                      );
                    }
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
