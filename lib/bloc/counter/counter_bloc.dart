import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterState()) {
    on<CounterIncrement>(_onIncrement);
    on<CounterDecrement>(_onDecrement);
  }

  void _onIncrement(
    CounterIncrement event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(value: state.value + 1));
  }

  void _onDecrement(
    CounterDecrement event,
    Emitter<CounterState> emit,
  ) async {
    emit(state.copyWith(value: state.value - 1));
  }
}
