import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_tall/core/routes/app_routes.dart';
import 'package:go_tall/core/theme/app_colors.dart';
import 'package:go_tall/core/theme/app_theme.dart';
import 'package:go_tall/features/onboarding/presentation/pages/personal_details_page.dart';
import 'package:go_tall/features/onboarding/presentation/pages/welcome_page.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.welcomePage,
      title: 'Go Tall',
      builder: (context, child) {
        return Column(
          children: [
            Expanded(
              child: MediaQuery.removePadding(
                context: context,
                removeBottom: true,
                child: child!,
              ),
            ),
            Container(
              color: AppColors.darkNavy,
              height: MediaQuery.of(context).padding.bottom,
            ),
          ],
        );
      },
      theme: AppTheme.darkTheme,
      routes: {
        AppRoutes.welcomePage: (context) => const WelcomePage(),
        AppRoutes.personalDetailsPage: (context) => const PersonalDetailsPage(),
      },
    );
  }
}
