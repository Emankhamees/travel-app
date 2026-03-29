part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}
class CounterValueChanaged extends  CounterState {
  final int counter;
  CounterValueChanaged ({required this.counter});
}
