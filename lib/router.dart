import 'package:etotronics/main_layout.dart';
import 'package:etotronics/pages/landing_page.dart';
import 'package:go_router/go_router.dart';

// router.dart

// import 'main_layout.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'home',
      builder: (context, state) => const MainLayout(
        child: LandingPage( ),
      ),
    ),
    
  ],
);



