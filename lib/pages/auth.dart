import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import '../../pages/home.dart';
import '../../style/colors.dart';
// import '../../utils/router.dart';
import 'dart:developer';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'InsureMate',
          style: TextStyle(color: primaryColor),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 13.0),
                child: const Text('🚀 Do. It. Now 🚀',
                    style: TextStyle(fontWeight: FontWeight.bold))),
            const SizedBox(
              height: 13.0,
            ),
            ElevatedButton(
              onPressed: () => log('Tapped google button'),
              child: const Text(
                'Continue with Google',
              ),
            ),
            const SizedBox(
              height: 13.0,
            ),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              child: const Icon(Icons.home),
            )
          ],
        ),
      ),
    );
  }
}
