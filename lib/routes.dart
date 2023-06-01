import 'package:go_router/go_router.dart';

import 'features/Landing_page/routes/LandingPage.dart';

class EesaRoutes extends GoRouter {
  static EesaRoutes? _instance;

  EesaRoutes._()
      : super(routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => const LandingPage(),
          ),
        ]);

  static EesaRoutes get instance {
    _instance ??= EesaRoutes._();
    return _instance!;
  }
}
