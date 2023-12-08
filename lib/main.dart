import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../pages/claims/claims_list.dart';
import '../../pages/user/create.dart';
import 'pages/policies/policies_list.dart';
import '../../pages/home.dart';
import '../../pages/info.dart';
import '../../pages/user/user.dart';
import '../../pages/auth.dart';
import '../../style/colors.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  /* This widget is the root of your application. */
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
        routerConfig: _router,
        debugShowCheckedModeBanner: false,
        /* title: 'Flutter Demo', */
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: primaryColor, secondary: textBlackColor),
          useMaterial3: true,
          /*  fontFamily: GoogleFonts.quicksand().fontFamily, */
          textTheme: GoogleFonts.montserratTextTheme(),
          // home: const AuthPage(),
        ));
  }

  final GoRouter _router = GoRouter(initialLocation: '/auth', routes: [
    GoRoute(
      path: '/auth',
      builder: (context, state) => const AuthPage(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomePage(),
    ),
    GoRoute(
      path: '/info',
      builder: (context, state) => const AppInfoPage(),
    ),
    GoRoute(
      path: '/user-create',
      builder: (context, state) => const CreateUserPage(),
    ),
    GoRoute(
      path: '/user',
      builder: (context, state) => const UserPage(),
    ),
    GoRoute(
      path: '/policies-list',
      builder: (context, state) => const PoliciesPage(),
    ),
    GoRoute(
      path: '/claims-list',
      builder: (context, state) => const ClaimsListPage(),
    ),
  ]);
}
