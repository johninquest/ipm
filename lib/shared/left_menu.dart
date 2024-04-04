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
                Icons.request_page_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'CLAIMS',
              ),
              onTap: () => context.push('/claims-list'),
            ),
            ListTile(
              leading: const Icon(
                Icons.list_alt,
                color: primaryColor,
              ),
              title: const Text('POLICIES'),
              onTap: () => context.push('/contracts-list'),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outline,
                color: primaryColor,
              ),
              title: const Text(
                'USER',
              ),
              /* onTap: () => PageRouter().navigateToPage(const SchoolInfoPage(), context) */
              onTap: () => context.push('/user'),
            ),
            ListTile(
              leading: const Icon(
                Icons.info_outline,
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
