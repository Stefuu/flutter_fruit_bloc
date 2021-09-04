import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fruit_bloc/bloc/fruit_events.dart';
import 'package:flutter_fruit_bloc/models/fruit.dart';
import 'package:flutter_fruit_bloc/repository/fruit_repository.dart'
    as fruit_repo;

import 'fruit_states.dart';

class FruitBloc extends Bloc<FruitEvents, FruitState> {
  FruitBloc() : super(FruitStateInital());

  @override
  Stream<FruitState> mapEventToState(FruitEvents event) async* {
    if (event is FruitEventsLoad) {
      List<Fruit> fruits = await fruit_repo.getFruitList();
      yield FruitStateLoaded(fruits);
    }
  }
}
