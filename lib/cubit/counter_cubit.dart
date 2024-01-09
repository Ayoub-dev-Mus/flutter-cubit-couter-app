import 'package:counter_app/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterState(CounterValue: 0, wasIncremented: false));

  void increment() => emit(
      CounterState(CounterValue: state.CounterValue + 1, wasIncremented: true));
  void decrement() => emit(CounterState(
      CounterValue: state.CounterValue - 1, wasIncremented: false));
}
