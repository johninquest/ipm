import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../style/colors.dart';

class LogoutDialog extends StatelessWidget {
  const LogoutDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Icon(
        Icons.info_outline,
        /* color: primaryColor, */
        size: 35.0,
      ),
      content: const Text(
        'Log out ?',
        textAlign: TextAlign.center,
        style: TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                'NO',
                style: TextStyle(
                    color: txtBlackColor, fontWeight: FontWeight.bold),
              ),
            ),
            TextButton(
                onPressed: () {
                  /* final _spHelper = SharedPreferencesHelper();
                  _spHelper.removeData('loginId');
                  _spHelper.removeData('currentUserData').then((_) {
                    PageRouter().navigateToPage(LoginPage(), context); */

                  context.push('/auth');
                },
                child: const Text(
                  'YES',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ))
          ],
        ),
      ],
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0))),
    );
  }
}
