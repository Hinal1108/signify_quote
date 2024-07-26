import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:signify_quote/presentation/bloc/quotes/quote_event.dart';
import 'package:signify_quote/quote.dart';

import 'network/bloc/internet_bloc.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
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
        title: 'Random Quotes',
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: const HomePage(),
      ),
    );
  }
}

final class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
