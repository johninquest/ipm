import 'package:flutter/material.dart';
// import 'package:go_router/go_router.dart';
// import '../../pages/home.dart';
import '../../style/colors.dart';
// import '../../utils/router.dart';

class WaitlistPage extends StatelessWidget {
  const WaitlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    const String appName = 'InsurAlly';
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
                // height: MediaQuery.of(context).size.width * 0.55,
                width: MediaQuery.of(context).size.width * 0.89,
                margin:
                    const EdgeInsets.only(bottom: 21.0, left: 8.0, right: 8.0),
                padding: const EdgeInsets.all(3.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text('All Your Policies, One App',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          wordSpacing: 1.0,
                        )),
                    const Text(
                        'InsurAlly will help you regain control and manage all your insurance policies from one app!',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.0,
                            color: primaryColor)),
                    const SizedBox(
                      height: 55.0,
                    ),
                    const Text('Be Among the First',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            wordSpacing: 1.0,
                            fontSize: 34.0)),
                    const SizedBox(
                      height: 13.0,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.alternate_email),
                          label: Text('Enter your e-mail')),
                    ),
                    const SizedBox(
                      height: 21.0,
                    ),
                    Container(
                      margin: const EdgeInsets.all(3.0),
                      child: ElevatedButton(
                        onPressed: () => debugPrint('Tapped: Join waitlist'),
                        child: const Text('Join the waitlist',
                            style: TextStyle(
                                wordSpacing: 1.0,
                                color: primaryColor,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
