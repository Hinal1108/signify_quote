part of 'quote.dart';

class QuoteApp extends StatefulWidget {
  const QuoteApp({super.key});

  @override
  State<QuoteApp> createState() => _QuoteAppState();
}

class _QuoteAppState extends State<QuoteApp> {
  late QuoteUseCase quoteUseCase;
  final ApiClient apiClient = ApiClient();
  late SharedPreferences sharedPreferences;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      sharedPreferences = await SharedPreferences.getInstance();
    });
    quoteUseCase = QuoteUseCase(
        quoteRepository: QuoteRepositoryImpl(
            api: apiClient, sharedPreferences: sharedPreferences));
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
