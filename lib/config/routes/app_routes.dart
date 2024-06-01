import 'package:go_router/go_router.dart';
import 'package:lucadev_porforlio/features/home/ui/screens/home_screen.dart';

final appRoutes = GoRouter(
  initialLocation: '/home_screen',
  routes: [
    GoRoute(
      path: HomeScreen.name,
      name: HomeScreen.name,
      builder: (context, state) {
        return const HomeScreen();
      },
    ),
  ],
);
