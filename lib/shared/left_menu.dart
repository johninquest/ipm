import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../style/colors.dart';

class LeftMenu extends StatefulWidget {
  const LeftMenu({super.key});

  @override
  State<LeftMenu> createState() => _LeftMenuState();
}

class _LeftMenuState extends State<LeftMenu> {
  String? currentUserName;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.5,
      child: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
                decoration: const BoxDecoration(color: primaryColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(
                      Icons.settings,
                      color: Colors.white,
                      size: 50.0,
                    ),
                    Text(
                      currentUserName ?? '',
                      style: const TextStyle(
                          fontWeight: FontWeight.bold, fontSize: 20.0),
                    )
                  ],
                )),
            ListTile(
              leading: const Icon(
                Icons.person,
                color: primaryColor,
              ),
              title: const Text(
                'User',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => context.push('/user'),
            ),
            ListTile(
              leading: const Icon(
                Icons.list_alt,
                color: primaryColor,
              ),
              title: const Text('Policies'),
              onTap: () => context.push('/policies'),
            ),
            /*  const SizedBox(
              height: 25.0,
            ), */
/*             ListTile(
              leading: const Icon(
                Icons.build,
                color: primaryColor,
              ),
              title: const Text(
                'Liabilities',
              ),
              onTap: () => log('Tapped 3'),
            ),
            ListTile(
              leading: const Icon(
                Icons.account_balance_wallet,
                color: primaryColor,
              ),
              title: const Text(
                'Net worth',
              ),
              onTap: () => context.push('/networth'),
            ), */
            ListTile(
              leading: const Icon(
                Icons.info,
                color: primaryColor,
              ),
              title: const Text(
                'Info',
              ),
              onTap: () => context.push('/info'),
            ),
          ],
        ),
      ),
    );
  }
}
