import 'package:flutter/material.dart';

class NetworthOverviewPage extends StatelessWidget {
  const NetworthOverviewPage({super.key});

  @override
  Widget build(BuildContext context) {
    // const String nwFormula = 'Networth = Assets - Liabilities';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Net worth'),
        centerTitle: true,
      ),
      body: const Center(
        child: nwText,
      ),
    );
  }
}

const Widget nwText = Text.rich(TextSpan(children: [
  TextSpan(
      text: 'Net worth',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blue)),
  TextSpan(text: ' = '),
  TextSpan(
      text: 'Assets',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.green)),
  TextSpan(text: ' + '),
  TextSpan(
      text: 'Liabilities',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),
]));
