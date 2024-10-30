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
          onPressed: () => context.push('/claims-list'),
          child: const Text('CLAIMS', style: TextStyle(letterSpacing: 1.0)),
        ), */
        const SizedBox(
          height: 13.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(minimumSize: const Size(233, 55)),
          onPressed: () => context.push('/policies-list'),
          child: const Text(
            'POLICIES',
            style: TextStyle(letterSpacing: 1.0),
          ),
        ),
        const SizedBox(
          height: 21.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(minimumSize: const Size(233, 55)),
          onPressed: () => context.push('/policy-create'),
          child: const Text('NEW POLICY'),
        ),
      ])),
      /* bottomNavigationBar: const BottomNavBar(), */
      drawer: const LeftMenu(),
    );
  }
}
