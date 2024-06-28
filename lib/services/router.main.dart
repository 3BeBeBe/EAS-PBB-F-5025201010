part of 'router.dart';

Route<dynamic> generateRoute(RouteSettings settings){
  switch(settings.name){
    case SplashScreen.routeName:
      return _pageBuilder(
          (_) => const SplashScreen(),
          settings: settings
      );
    case LoginScreen.routeName:
      return _pageBuilder(
              (_) => const LoginScreen(),
          settings: settings
      );
    case RegisterScreen.routeName:
      return _pageBuilder(
              (_) => const RegisterScreen(),
          settings: settings
      );
    case HomeScreen.routeName:
      return _pageBuilder(
              (_) => const HomeScreen(),
          settings: settings
      );
    case PromoScreen.routeName:
      return _pageBuilder(
              (_) => const PromoScreen(),
          settings: settings
      );
    case OrderScreen.routeName:
      return _pageBuilder(
              (_) => const OrderScreen(),
          settings: settings
      );

    default:
      return _pageBuilder(
            (_) => const PageUnderConstruction(),
        settings: settings,
      );
  }
}

PageRouteBuilder<dynamic> _pageBuilder(
    Widget Function(BuildContext) page, {
      required RouteSettings? settings,
    }) {
  return PageRouteBuilder(
    settings: settings,
    pageBuilder: (context, _, __) => page(context),
  );
}