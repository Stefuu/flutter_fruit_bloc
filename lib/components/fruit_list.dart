import 'package:flutter/widgets.dart';
import 'package:flutter_fruit_bloc/components/fruit_item.dart';
import 'package:flutter_fruit_bloc/models/fruit.dart';

class FruitList extends StatelessWidget {
  final List<Fruit> fruits;

  const FruitList({
    Key? key,
    required this.fruits,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List<FruitItem>.from(
        fruits.map(
          (item) => FruitItem(
            name: item.name,
          ),
        ),
      ),
    );
  }
}
