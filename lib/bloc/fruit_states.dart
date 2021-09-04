import 'package:flutter_fruit_bloc/models/fruit.dart';

abstract class FruitState {}

class FruitStateError implements FruitState {}

class FruitStateInital implements FruitState {}

class FruitStateLoading implements FruitState {}

class FruitStateLoaded implements FruitState {
  FruitStateLoaded(this.fruits);

  List<Fruit> fruits;
}
