import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://192.168.29.77:5001';

  // Register Seller (all details in one request)
  Future<dynamic> registerSeller({
    required String name,
    required String email,
    required String password,
    required String phoneNumber,
    required String businessName,
    required String msmeId,
    required String gstin,
    required String street,
    required String city,
    required String state,
    required String postalCode,
    required String country,
  }) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/merchant/register'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'name': name,
        'email': email,
        'password': password,
        'phone_number': phoneNumber,
        'business_name': businessName,
        'msme_id': msmeId,
        'gstin': gstin,
        'street': street,
        'city': city,
        'state': state,
        'postal_code': postalCode,
        'country': country,
      }),
    );

    if (response.statusCode == 201) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to register seller');
    }
  }
//Add a new product for seller
Future<void> addProduct({
    required String name,
    required String description,
    required String category,
    required String price,
    required int stock,
    required File imageFile,
  }) async {
    final uri = Uri.parse('$baseUrl/api/merchant/add-product');
    final request = http.MultipartRequest('POST', uri)
      ..fields['name'] = name
      ..fields['description'] = description
      ..fields['category'] = category
      ..fields['price'] = price
      ..fields['stock'] = stock.toString()
      ..files.add(await http.MultipartFile.fromPath('images', imageFile.path)); 

    final response = await request.send();

     if (response.statusCode == 200) {
      final responseBody = await response.stream.bytesToString();
      final responseJson = jsonDecode(responseBody);
      // Handle success
    } else {
      final responseBody = await response.stream.bytesToString();
      print('Error response body: $responseBody'); // Log error response body
      throw Exception('Failed to add product');
    }
  }

  //login Merchant
  Future<Map<String, dynamic>> loginMerchant(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/api/merchant/login'),
      headers: {
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception('Failed to log in');
    }
  }
}

