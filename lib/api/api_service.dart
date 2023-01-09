import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:toko_komputer_api/model/barangread.dart';
import 'package:toko_komputer_api/model/customer.dart';

class ApiService {
  static const String baseUrl = 'http://127.0.0.1/komputer_api/api/';
  
  Future<BarangRead> getBarang() async {
    final response = await http.get(Uri.parse("${baseUrl}barang/read.php"));
    if (response.statusCode == 200) {
      return BarangRead.fromJson(json.decode(response.body));
    } else {
      throw Exception('gagal');
    }
  }

  Future<http.Response> createBarang(String nama) async {
    final response = await http.post(
      Uri.parse("${baseUrl}barang/create.php"),
      body: jsonEncode(<String, String>{
        'nama': nama,
      }),
    );
    return response;
  }

  Future<http.Response> createCustomer(Customer customer) async {
    final response = await http.post(
      Uri.parse("${baseUrl}customer/create.php"),
      body: jsonEncode(customer.toJson()),
    );
    return response;
  }

}