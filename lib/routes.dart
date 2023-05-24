import 'package:eesa/routes/LandingPage.dart';
import 'package:go_router/go_router.dart';

class EesaRoutes extends GoRouter {
  static EesaRoutes? _instance;

  EesaRoutes._()
      : super(routes: [
          GoRoute(
            path: '/',
            builder: (context, state) => LandingPage(),
          ),
        ]);

  static EesaRoutes get instance {
    _instance ??= EesaRoutes._();
    return _instance!;
  }
}
