import 'package:flutter/material.dart';
import 'dart:developer';

class PoliciesPage extends StatelessWidget {
  const PoliciesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Policies'),
        centerTitle: true,
      ),
      body: const Center(child: Text('List of insurance policies')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => log('Tapped add new policy button'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
