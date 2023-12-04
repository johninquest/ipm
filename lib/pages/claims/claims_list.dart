import 'package:flutter/material.dart';
import 'dart:developer';

class ClaimsListPage extends StatelessWidget {
  const ClaimsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Claims list'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('List of claims'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => log('Tapped add new claim button'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
