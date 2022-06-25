import 'package:bloc/bloc.dart';

abstract class CounterEvent{}
class IncrementCounterEvent extends CounterEvent {
}
class DecrementCounterEvent extends CounterEvent {
}

// States
abstract class CounterState {
  final int counter;

  const CounterState({
    required this.counter,
  });
}
// CounterSuccessState
class CounterSuccessState extends CounterState{
  CounterSuccessState({required int counter}) : super(counter: counter);

}
// CounterErrorState
class CounterErrorState extends CounterState {
  final String errorMessage;

  CounterErrorState({required int counter, required this.errorMessage}) : super(counter: counter);

}

// CounterInitialState
class CounterInitialState extends CounterState {
  CounterInitialState() : super(counter: 0);

}

// CounterBloc
class CounterBloc extends Bloc<CounterEvent, CounterState>{
  CounterBloc(): super(CounterInitialState()){
    on((IncrementCounterEvent event, emit) {
      if(state.counter<10){
        int counterValue=state.counter+1;
        emit(CounterSuccessState(counter: counterValue));
      } else {
        emit(CounterErrorState(
            counter: state.counter,
            errorMessage: "Counter value can not exceed 10"
        ));

      }
    });
    on((DecrementCounterEvent event, emit) {
      if(state.counter>0){
        int counterValue=state.counter-1;
        emit(CounterSuccessState(counter: counterValue));
      } else {
        emit(CounterErrorState(
            counter: state.counter,
            errorMessage: "Counter value can't be less than 0"
          ));
        }
      });
  }
}
