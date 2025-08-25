import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/transformers.dart';

class IncrementEvent {}

// ========= STATE =========
class CounterState {
  final int value;
  CounterState(this.value);
}

EventTransformer<IncrementEvent> bufferTimeTransformer(Duration duration) {
  return (events, mapper) {
    return events
        .bufferTime(duration)
        .asyncExpand(
          (eventList) => Stream.fromIterable(eventList).asyncExpand(mapper),
        );
  };
}

class CounterBloc extends Bloc<IncrementEvent, CounterState> {
  Timer? _timer;
  CounterBloc() : super(CounterState(0)) {
    on<IncrementEvent>(
      _onIncrement,
      transformer: bufferTimeTransformer(Duration(seconds: 5)),
    );

    _runPeriodic();
  }

  void _onIncrement(IncrementEvent event, Emitter<CounterState> emit) {
    emit(CounterState(state.value + 1));
  }

  void _runPeriodic() {
    _timer = Timer.periodic(Duration(seconds: 5), (timer) {
      add(IncrementEvent());
    });
  }

  @override
  Future<void> close() {
    _timer?.cancel();
    return super.close();
  }
}
