import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_fruit_bloc/bloc/fruit_bloc.dart';
import 'package:flutter_fruit_bloc/bloc/fruit_events.dart';
import 'package:flutter_fruit_bloc/bloc/fruit_states.dart';
import 'package:flutter_fruit_bloc/components/fruit_item.dart';
import 'package:flutter_fruit_bloc/components/fruit_list.dart';
import 'package:flutter_fruit_bloc/models/fruit.dart';
import '../../bloc/fruit_bloc.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('App Demonio'),
      ),
      body: Center(
        child: HomeContent(),
      ),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FruitBloc, FruitState>(
      builder: (context, state) {
        var emit = context.read<FruitBloc>();

        if (state is FruitStateLoaded) {
          return Center(
            child: Column(
              children: [
                FruitList(
                  fruits: List<Fruit>.from(state.fruits),
                ),
              ],
            ),
          );
        } else if (state is FruitStateInital) {
          return Container(
            child: ElevatedButton(
              onPressed: () => {
                emit.add(
                  FruitEventsLoad(),
                ),
              },
              child: Text("Carrega ae"),
            ),
          );
        } else {
          return Container(
            child: Text("Vazio infinito"),
          );
        }
      },
    );
  }
}
