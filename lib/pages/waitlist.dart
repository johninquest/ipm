import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../../pages/home.dart';
import '../../style/colors.dart';
// import '../../utils/router.dart';

class WaitlistPage extends StatelessWidget {
  const WaitlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appName = 'InsureMate';
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          appName,
          style: TextStyle(
              color: primaryColor,
              letterSpacing: 3.0,
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
                    Text('Be Among the First',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.0,
                            fontSize: 34.0)),
                    SizedBox(
                      height: 13.0,
                    ),
                    Text('Join the $appName Waitlist',
                        style:
                            TextStyle(wordSpacing: 1.0, color: primaryColor)),
                  ],
                )),

            /*  const SizedBox(
              height: 13.0,
            ),
            ElevatedButton(
              onPressed: () => context.go('/home'),
              // child: const Icon(Icons.home),
              child: const Text('START', style: TextStyle(color: primaryColor)),
            ) */
          ],
        ),
      ),
    );
  }
}
