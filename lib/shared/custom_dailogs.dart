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

                  context.push('/');
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

class InfoDialog extends StatelessWidget {
  final String? title; // Optional icon title/tooltip
  final IconData icon;
  final double iconSize;
  final String content;
  final String buttonText;
  final VoidCallback? onButtonPressed; // Optional callback for the button

  const InfoDialog({
    super.key,
    this.title,
    this.icon = Icons.info_outline,
    this.iconSize = 35.0,
    required this.content,
    this.buttonText = 'OK',
    this.onButtonPressed,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Icon(
        icon,
        size: iconSize,
        semanticLabel: title,
        color: primaryColor,
      ),
      content: Text(
        content,
        textAlign: TextAlign.center,
        style: const TextStyle(fontWeight: FontWeight.bold),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextButton(
              onPressed: onButtonPressed ?? () => Navigator.of(context).pop(),
              child: Text(
                buttonText,
                style: const TextStyle(
                    color: primaryColor,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.0),
              ),
            ),
          ],
        ),
      ],
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
    );
  }
}
