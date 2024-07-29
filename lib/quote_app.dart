part of 'quote.dart';

class QuoteApp extends StatefulWidget {
  const QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  late QuoteUseCase quoteUseCase;
  final ApiClient apiClient = ApiClient();

  @override
  void initState() {
    super.initState();
    quoteUseCase =
        QuoteUseCase(quoteRepository: QuoteRepositoryImpl(api: apiClient));
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InternetBloc(),
        ),
        BlocProvider(
          create: (context) =>
              QuoteBloc(quoteUseCase: quoteUseCase)..add(QuoteInitialEvent()),
        ),
      ],
      child: MaterialApp(
        title: Constants.appTitle,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomePage(),
      ),
    );
  }
}
