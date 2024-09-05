import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'dart:developer';

class PoliciesListPage extends StatelessWidget {
  const PoliciesListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Policies'),
        centerTitle: true,
      ),
      body: const Center(child: Text('List of insurance policies')),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.push('/policy-create'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ),
    );
  }
}
