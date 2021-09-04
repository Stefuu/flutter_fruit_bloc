import 'package:http/http.dart' as http;

Future<String> getFruitResponse() async {
  var url = Uri.parse("https://www.fruityvice.com/api/fruit/all");
  var response = await http.get(url);
  return response.body;
}
