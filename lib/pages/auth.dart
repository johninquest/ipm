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
          'PolicyTrackr',
          style: TextStyle(
              color: primaryColor, letterSpacing: 3.0, fontSize: 13.0),
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
                    style: TextStyle(
                        fontWeight: FontWeight.bold, wordSpacing: 3.0))),
            const SizedBox(
              height: 13.0,
            ),
            /* ElevatedButton(
              onPressed: () => log('Tapped google button'),
              child: const Text(
                'Continue with Google',
                style: TextStyle(color: primaryColor),
              ),
            ), */
            const SizedBox(
              height: 13.0,
            ),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              // child: const Icon(Icons.home),
              child: const Text('Home', style: TextStyle(color: primaryColor)),
            )
          ],
        ),
      ),
    );
  }
}
