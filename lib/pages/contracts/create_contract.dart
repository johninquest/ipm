import 'package:flutter/material.dart';
import 'dart:developer';

class CreateContractPage extends StatelessWidget {
  const CreateContractPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New contract'),
        centerTitle: true,
      ),
      body: const Center(child: Text('New insurance contract')),
    );
  }
}
