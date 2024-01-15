import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'dart:developer';

class ListOfContractsPage extends StatelessWidget {
  const ListOfContractsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contracts'),
        centerTitle: true,
      ),
      body: const Center(child: Text('List of insurance contracts')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/contract-create'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
