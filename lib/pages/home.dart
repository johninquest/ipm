import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../shared/left_menu.dart';
import '../../utils/date_time_helper.dart';
import '../style/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final dtHelper = DateTimeHelper();
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(color: textWhiteColor),
        backgroundColor: primaryColor,
        title: const Text(
          'InsureMate',
          style: TextStyle(color: textWhiteColor, letterSpacing: 1.0),
        ),
        centerTitle: true,
        actions: [
          /* IconButton(
            onPressed: () => showDialog(
                context: context,
                builder: (_) => const LogoutDialog(),
                barrierDismissible: true),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          ) */
          IconButton(
            onPressed: () => context.push('/auth'),
            icon: const Icon(Icons.logout_outlined),
            tooltip: 'Log out',
          )
        ],
      ),
      /* drawer: const LeftMenu(), */
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        /* const Text('🚀 A new app is being born here 🚀'),
        const SizedBox(
          height: 13.0,
        ), */
        Text(dtHelper.deTimestamp()),
        const SizedBox(
          height: 13.0,
        ),
        ElevatedButton(
          style: ElevatedButton.styleFrom(),
          onPressed: () {},
          child: const Text('TAP ME'),
        ),
      ])),
      /* bottomNavigationBar: const BottomNavBar(), */
      drawer: const LeftMenu(),
/*       floatingActionButton: FloatingActionButton(
        onPressed: () => log('Tapped add button'),
        tooltip: 'Add',
        child: const Icon(Icons.add),
      ), */
    );
  }
}
