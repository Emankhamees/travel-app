part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}
class CounterIncerement extends CounterEvent{}
class CounterDecerement extends CounterEvent{}
class CounterReset extends CounterEvent{}
