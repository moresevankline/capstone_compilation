import 'dart:convert';  // For jsonDecode
import 'package:http/http.dart' as http;

class ApiService {
  // Fetching data from API (Nested Object)
  static Future<Map<String, Map<String, dynamic>>> fetchItemsFromApi() async {
    final response = await http.get(Uri.parse('http://127.0.0.1:8000/managers/'));

    if (response.statusCode == 200) {
      // Decode the JSON into a nested Map structure
      return Map<String, Map<String, dynamic>>.from(json.decode(response.body));
    } else {
      throw Exception('Failed to load items');
    }
  }
}