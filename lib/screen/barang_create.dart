import 'package:flutter/material.dart';
import 'package:toko_komputer_api/api/api_service.dart';
import 'package:toko_komputer_api/model/customer.dart';

class BarangCreate extends StatefulWidget {
  static const routeName = '/barang_create';
  const BarangCreate({Key? key}) : super(key: key);

  @override
  State<BarangCreate> createState() => _BarangCreateState();
}

class _BarangCreateState extends State<BarangCreate> {
  String _nama = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('ListView API'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              TextField(
                decoration: const InputDecoration(
                  hintText: 'Tuliskan Nama Komputer',
                  labelText: 'Input Barang',
                ),
                onChanged: (String value) {
                  setState(() {
                    _nama = value;
                  });
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                child: const Text('Submit'),
                onPressed: () {
                  ApiService apiService = ApiService();
                  apiService.createBarang(_nama);

                  Customer customer = Customer(
                      nama: 'Nur Sari',
                      alamat: 'Martapura',
                      tanggalBeli: '8 Januari 2023',
                      barangId: 1001);
                  apiService.createCustomer(customer);
                },
              )
            ],
          ),
        ));
  }
}