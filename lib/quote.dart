library quote;

import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:share_plus/share_plus.dart';
import 'package:signify_quote/api/api_constants.dart';
import 'package:signify_quote/presentation/bloc/quotes/quote_event.dart';
import 'package:signify_quote/utils/constants.dart';
import 'package:signify_quote/utils/json_path_constants.dart';

import 'core/usecase.dart';
import 'data/models/quotes_response.dart';
import 'network/bloc/internet_bloc.dart';

part "api/api_client.dart";
part 'domain/usecase/quote_usecase.dart';
part "package:signify_quote/api/app_http_overrides.dart";
part "package:signify_quote/data/repositories/quote_repository_impl.dart";
part "package:signify_quote/domain/repository/quote_repository.dart";
part 'package:signify_quote/presentation/bloc/quotes/quote_bloc.dart';
part 'package:signify_quote/presentation/bloc/quotes/quote_state.dart';
part "package:signify_quote/presentation/ui/components/custom_favourite.dart";
part "package:signify_quote/presentation/ui/components/custom_rating_bar.dart";
part "package:signify_quote/presentation/ui/components/custom_text.dart";
part "package:signify_quote/presentation/ui/home_page.dart";
part "package:signify_quote/quote_app.dart";
