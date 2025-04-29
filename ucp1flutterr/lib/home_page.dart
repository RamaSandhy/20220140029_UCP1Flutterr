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