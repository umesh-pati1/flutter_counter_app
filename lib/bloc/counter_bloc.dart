import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_couter_app/bloc/counter_state.dart';

import 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<CounterIncrementPressed>(onCounterIncrementPressed);
    on<CounterDecrementPressed>(onCounterDecrementPressed);
  }

  void onCounterIncrementPressed(
      CounterIncrementPressed event, Emitter<CounterState> emit) {
    emit(CounterState(state.counter + 1));
  }

  void onCounterDecrementPressed(
      CounterDecrementPressed event, Emitter<CounterState> emit) {
    emit(CounterState(state.counter - 1));
  }
}
