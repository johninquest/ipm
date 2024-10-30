import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import '../../pages/home.dart';
import '../../style/colors.dart';
import '../utils/version_info.dart';
// import '../../utils/router.dart';
// import 'dart:developer';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Politr',
          style: TextStyle(
              color: primaryColor,
              letterSpacing: 3.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        // Remove the Center widget and use Column directly
        children: [
          Expanded(
            // Wrap the main content in Expanded
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    margin: const EdgeInsets.only(
                        bottom: 13.0, left: 8.0, right: 8.0),
                    child: const Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('All Your Insurance Policies, One App',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, wordSpacing: 3.0)),
                      ],
                    )),
                const SizedBox(height: 13.0),
                const SizedBox(height: 13.0),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(233, 55)),
                  onPressed: () => context.go('/home'),
                  child: const Text('START',
                      style: TextStyle(
                          color: primaryColor,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.bold)),
                ),
              ],
            ),
          ),
          const Padding(
            // Add padding around the AppVersionInfo
            padding: EdgeInsets.only(bottom: 16.0),
            child: AppVersionInfo(),
          ),
        ],
      ),
    );
  }
}
