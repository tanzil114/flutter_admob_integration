import 'package:movas/provider/provider.dart';
import 'package:flutter_admob_integration/movas/observables/counter/counter_entity.dart';
import 'package:flutter_admob_integration/movas/observables/counter/counter_observable.dart';

class CounterStore extends Store<CounterO> {
  CounterStore() {
    o$[CounterO].add(CounterO.fromE(CounterE()));
  }

  Future<void> incrementCounter() async {
    CounterO counterO = o$[CounterO].value;
    return o$[CounterO].add(counterO.copyWith(counter: counterO.counter + 1));
  }
}
