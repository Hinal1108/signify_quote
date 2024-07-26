part of 'internet_bloc.dart';

abstract class InternetEvent {}

final class InternetGainedEvent extends InternetEvent {}

final class InternetLostEvent extends InternetEvent {}
