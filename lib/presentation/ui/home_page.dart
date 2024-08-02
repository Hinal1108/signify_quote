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
                content: Text(Constants.internetConnect),
                backgroundColor: Colors.green,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            }
            if (state is InternetLostState) {
              var snackBar = const SnackBar(
                  content: Text(Constants.internetDisConnect),
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
                                                CustomFavourite(
                                                  snapshot: snapshot,
                                                  quotesResponse:
                                                      state.quotesResponse,
                                                ),
                                              ],
                                            );
                                          }),
                                      CustomText(
                                        text: state.quotesResponse.content ??
                                            Constants.quoteContent,
                                        textStyle: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 27,
                                          fontFamily: 'monospace',
                                        ),
                                      ),
                                      CustomText(
                                        text: state.quotesResponse.author ??
                                            Constants.quoteAuthor,
                                        textStyle: const TextStyle(
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
                                            return Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                CustomRatingBar(
                                                    ratingValue: snapshot.data
                                                            ?.updateRating ??
                                                        1)
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
                const SizedBox(
                  height: 50.0,
                ),
                // TextButton(onPressed: onPressed, child: child);
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
