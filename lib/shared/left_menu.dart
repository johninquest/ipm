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
/*             ListTile(
              leading: const Icon(
                Icons.request_page_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Claims',
              ),
              onTap: () => context.push('/claims-list'),
            ), */
            ListTile(
              leading: const Icon(
                Icons.list_alt,
                color: primaryColor,
              ),
              title: const Text('Policies'),
              onTap: () => context.push('/policies-list'),
            ),
            ListTile(
              leading: const Icon(
                Icons.person_outline,
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
                Icons.info_outline,
                color: primaryColor,
              ),
              title: const Text(
                'Info',
              ),
              onTap: () => context.push('/info'),
            ),
            ListTile(
              leading: const Icon(
                Icons.save_outlined,
                color: primaryColor,
              ),
              title: const Text(
                'Storage',
              ),
              onTap: () => context.push('/storage'),
            ),
          ],
        ),
      ),
    );
  }
}
