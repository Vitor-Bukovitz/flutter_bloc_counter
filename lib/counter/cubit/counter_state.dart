part of 'counter_cubit.dart';

@immutable
abstract class CounterState {
  final CounterModel counter;
  const CounterState(this.counter);
}

class CounterInitialState extends CounterState {
  CounterInitialState() : super(CounterModel(0));
}

class CounterUpdateState extends CounterState {
  CounterUpdateState(int newValue) : super(CounterModel(newValue));
}
