import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'dart:developer';

class ClaimsListPage extends StatelessWidget {
  const ClaimsListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Claims'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('List of claims'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/create-claim'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
