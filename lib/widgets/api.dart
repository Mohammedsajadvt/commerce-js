import 'dart:convert';
import 'package:e_commerce/model/product_model.dart';
import 'package:http/http.dart' as http;

class APIService {
  static Future<List<Product>> fetchData() async {
    final response = await http.get(
      Uri.parse('https://api.chec.io/v1/products?limit=20'),
      headers: {'X-Authorization': 'pk_56550066e86ffebe2208d9b4e01678591a57e62c677fd'},
    );

    if (response.statusCode == 200) {
      final jsonData = json.decode(response.body)['data'] as List;
      return jsonData.map((item) => Product.fromJson(item)).toList();
    } else {
      throw Exception('Failed to load products');
    }
  }
}
