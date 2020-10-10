import 'package:flutter_counter/counter/model/counter_model.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitialState());

  void increment() => emit(
        CounterUpdateState(state.counter.value + 1),
      );

  void decrement() => emit(
        CounterUpdateState(state.counter.value - 1),
      );

  void reset() => emit(
        CounterUpdateState(0),
      );
}
