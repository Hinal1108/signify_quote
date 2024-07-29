import 'dart:io';

import 'package:flutter/material.dart';
import 'package:signify_quote/quote.dart';

void main() {
  HttpOverrides.global = AppHttpOverrides();
  runApp(const QuoteApp());
}
