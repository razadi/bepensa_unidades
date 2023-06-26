
import 'package:bepensa_unidades/view/screens/screens.dart';
import 'package:go_router/go_router.dart';

final bmRouter = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      name: HomeScreen.name,
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/login',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/sucursales',
      name: SucursalScreen.name,
      builder: (context, state) => const SucursalScreen(),
    )
  ]
);