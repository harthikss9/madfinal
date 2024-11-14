import 'package:go_router/go_router.dart';
import '../pages/login_page.dart';
import '../pages/signup_page.dart';

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(
      path: '/login',
      builder: (context, state) => LoginPage(),
    ),
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignupPage(),
    ),
  ],
  initialLocation: '/login',
);
