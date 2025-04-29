import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('Selamat Datang'),
        actions: [
          IconButton(
            icon: const Icon(Icons.logout),
            onPressed: () {
              // Logic for logout action
            },
          ),
        ],
        backgroundColor: const Color(0xFFFF5722),
      ),
      body: Column(
        children: [
          Container(
            height: 150,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFFFF5722),
              borderRadius: const BorderRadius.vertical(bottom: Radius.circular(20)),
            ),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with your profile image
                  ),
                  SizedBox(height: 5),
                  Text('Admin', style: TextStyle(color: Colors.white, fontSize: 22)),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Card(
              elevation: 4,
              child: Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Dapatkan Diskon 25% disetiap harinya',
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      // Logic for Order now button
                    },
                    child: const Text('Order now'),
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              padding: const EdgeInsets.all(16),
              crossAxisCount: 2,
              childAspectRatio: 1,
              children: [
                _buildGridItem(context, Icons.paste, 'Data Pikét'),
                _buildGridItem(context, Icons.people, 'Data Pelanggan'),
                _buildGridItem(context, Icons.input, 'Barang Masuk/Keluar'),
                _buildGridItem(context, Icons.add, 'Tambah Item'),
              ],
            ),
          ),
        ],
      ),
    );
  }