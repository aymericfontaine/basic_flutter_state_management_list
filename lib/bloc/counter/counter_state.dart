part of 'counter_bloc.dart';

class CounterState {
  const CounterState({
    this.value = 0,
  });

  final int value;

  CounterState copyWith({
    int? value,
  }) {
    return CounterState(
      value: value ?? this.value,
    );
  }
}
