import 'package:flutter/material.dart';

import 'core/utils/app_colors.dart';
import 'core/utils/app_routes.dart';

void main() {
  runApp(const SpaceApp());
}

class SpaceApp extends StatelessWidget {
  const SpaceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Space App',
      theme: ThemeData(scaffoldBackgroundColor: AppColors.backgroundColor),
      initialRoute: AppRoutes.splashScreen,
      onGenerateRoute: AppRoutes.generateRoute,
    );
  }
}
