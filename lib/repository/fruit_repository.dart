import 'dart:convert';

import 'package:flutter_fruit_bloc/data_layer/fruit_api.dart'
    as fruit_data_layer;
import 'package:flutter_fruit_bloc/models/fruit.dart';

Future<List<Fruit>> getFruitList() async {
  var response = await fruit_data_layer.getFruitResponse();
  List<dynamic> resApi = json.decode(response);

  Iterable<Fruit> iFruit = resApi.map<Fruit>(
      (fruitJson) => Fruit.fromJson(fruitJson as Map<String, dynamic>));

  var fruitList = List<Fruit>.from(iFruit);

  return fruitList;
}
