import 'package:flutter/material.dart';

class ClaimCreatePage extends StatelessWidget {
  const ClaimCreatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('New claim'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text('New insurance claim'),
      ),
    );
  }
}
