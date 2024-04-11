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
          'PoliTkr',
          style: TextStyle(
              color: primaryColor,
              letterSpacing: 3.0,
              fontSize: 13.0,
              fontWeight: FontWeight.bold),
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
                margin:
                    const EdgeInsets.only(bottom: 13.0, left: 8.0, right: 8.0),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('All Your Policies, One App',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, wordSpacing: 3.0)),
                    Text(
                        'Manage all your insurance coverages in one secure & organized location',
                        style: TextStyle(wordSpacing: 1.0)),
                  ],
                )),
            const SizedBox(
              height: 13.0,
            ),
            const SizedBox(
              height: 13.0,
            ),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              // child: const Icon(Icons.home),
              child: const Text('START', style: TextStyle(color: primaryColor)),
            )
          ],
        ),
      ),
    );
  }
}
