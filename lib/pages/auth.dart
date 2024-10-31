import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:ipm/shared/custom_dailogs.dart';
import '../../style/colors.dart';
import '../utils/version_info.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Politrk',
          style: TextStyle(
              color: primaryColor,
              letterSpacing: 3.0,
              fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: Column(
        children: [
          const SizedBox(height: 40), // Add some spacing from the top
          const Text('All Your Insurance Policies, One App',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                wordSpacing: 3.0,
                fontSize: 18, // Optional: make the title more prominent
              )),
          Expanded(
            child: Center(
              // Center widget to ensure buttons are in the middle
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(233, 55)),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => const InfoDialog(
                            content: 'Currently not supported!'),
                      ),
                      child: const Text('Continue with Google',
                          style: TextStyle(
                              color: primaryColor,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 10), // Add spacing between buttons
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(233, 55)),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => const InfoDialog(
                            content: 'Currently not supported!'),
                      ),
                      child: const Text('Continue with Facebook',
                          style: TextStyle(
                              color: primaryColor,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 10), // Add spacing between buttons
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(233, 55)),
                      onPressed: () => showDialog(
                        context: context,
                        builder: (context) => const InfoDialog(
                            content: 'Currently not supported!'),
                      ),
                      child: const Text('Continue with Apple',
                          style: TextStyle(
                              color: primaryColor,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 10), // Add spacing between buttons
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(233, 55)),
                      onPressed: () => context.go('/home'),
                      child: const Text('Demo',
                          style: TextStyle(
                              color: primaryColor,
                              letterSpacing: 1.0,
                              fontWeight: FontWeight.bold)),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(bottom: 16.0),
            child: AppVersionInfo(),
          ),
        ],
      ),
    );
  }
}
