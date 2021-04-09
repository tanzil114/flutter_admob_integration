import 'package:flutter/material.dart';
import 'package:movas/provider/provider.dart';
import 'package:flutter_admob_integration/movas/stores/counter/counter_store.dart';

class CounterA {
  CounterStore counterStore;
  CounterA(this.counterStore);

  Future<void> incrementCounter() {
    return counterStore.incrementCounter();
  }

  factory CounterA.of(BuildContext context) =>
      CounterA(StaticProvider.of(context));
}
