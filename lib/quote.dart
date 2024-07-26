library quote;

import 'dart:async';
import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:share_plus/share_plus.dart';
import 'package:signify_quote/presentation/bloc/quotes/quote_event.dart';

import 'core/usecase.dart';
import 'data/responsemodels/quotes_response.dart';
import 'network/bloc/internet_bloc.dart';

part "api/api_client.dart";
part 'domain/usecase/quote_usecase.dart';
part "package:signify_quote/data/repositories/quote_repository_impl.dart";
part "package:signify_quote/domain/repository/quote_repository.dart";
part 'package:signify_quote/presentation/bloc/quotes/quote_bloc.dart';
part 'package:signify_quote/presentation/bloc/quotes/quote_state.dart';
part "package:signify_quote/presentation/ui/home_page.dart";
