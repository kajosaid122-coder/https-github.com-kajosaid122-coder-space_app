import 'package:flutter/material.dart';
import 'package:flutter_3d_controller/flutter_3d_controller.dart';

import '../../ui/screens/features/details/planet_details_screen.dart';
import '../../ui/screens/features/explore/explore_screen.dart';
import '../../ui/screens/features/explore/splash_screen.dart';

class AppControllers {
  static final Flutter3DController planet3DController = Flutter3DController();
}

class CustomPlanet3DView extends StatelessWidget {
  final String modelPath;
  final double height;

  const CustomPlanet3DView({
    super.key,
    required this.modelPath,
    this.height = 320,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: Flutter3DViewer(
        controller: AppControllers.planet3DController,
        src: modelPath,
      ),
    );
  }
}

class AppRoutes {
  static const String splashScreen = '/';
  static const String exploreScreen = '/explore';
  static const String planetDetailsScreen = '/planet_details';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashScreen:
        return MaterialPageRoute(builder: (_) => const SplashScreen());

      case exploreScreen:
        return MaterialPageRoute(builder: (_) => const ExploreScreen());

      case planetDetailsScreen:
        return MaterialPageRoute(
          builder: (_) => const PlanetDetailsScreen(),
          settings: settings,
        );

      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
