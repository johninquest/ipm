import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:go_router/go_router.dart';
import '../../shared/left_menu.dart';
// import '../../utils/date_time_helper.dart';
import '../shared/custom_dailogs.dart';
import '../style/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // final dtHelper = DateTimeHelper();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: txtWhiteColor),
        backgroundColor: primaryColor,
        title: const Text(
          '',
          style: TextStyle(color: txtWhiteColor, letterSpacing: 1.0),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (_) => const LogoutDialog(),
                barrierDismissible: true),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          )
          /*  IconButton(
            onPressed: () => context.push('/auth'),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          ) */
        ],
      ),
      /* drawer: const LeftMenu(), */
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        /*  ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () => debugPrint('Tapped TAP ME button'),
          child: const Text('TAP ME'),
        ), */
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () => context.push('/claims-list'),
          child: const Text('CLAIMS LIST'),
        ),
        const SizedBox(
          height: 13.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () => context.push('/contracts-list'),
          child: const Text(
            'POLICY LIST',
          ),
        ),
        const SizedBox(
          height: 13.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () => debugPrint('Tapped NEW button'),
          child: const Text('NEW'),
        ),
      ])),
      /* bottomNavigationBar: const BottomNavBar(), */
      drawer: const LeftMenu(),
    );
  }
}
