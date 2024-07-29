import 'dart:io';

import 'package:flutter/material.dart';
import 'package:signify_quote/quote.dart';

void main() {
  // HttpOverrides.global = MyHttpOverrides();
  runApp(const QuoteApp());
}

final class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}
