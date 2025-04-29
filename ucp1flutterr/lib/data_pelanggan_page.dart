import 'package:flutter/material.dart';

class DataPelangganPage extends StatelessWidget {
  const DataPelangganPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> pelanggan = [
      {'nama': 'rama tri lestari bahagia dunia akhirat', 'telepon': '08123456789'},
      {'nama': 'agus beling nur santoso', 'telepon': '082233445566'},
      {'nama': 'supri nur elizabeth', 'telepon': '083322114455'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('Data Pelanggan'),
        backgroundColor: const Color(0xFFFF5722),
      ),
      body: ListView.builder(
        itemCount: pelanggan.length,
        itemBuilder: (context, index) {
          final item = pelanggan[index];
          return ListTile(
            leading: const Icon(Icons.person),
            title: Text(item['nama']!),
            subtitle: Text('Telepon: ${item['telepon']}'),
            trailing: IconButton(
              icon: const Icon(Icons.edit, color: Colors.blue),
              onPressed: () {
              },
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xFFFF5722),
        child: const Icon(Icons.add),
        onPressed: () {
          // Tambahkan fungsi untuk menambah pelanggan
        },
      ),
    );
  }
}
