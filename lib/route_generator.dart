import 'package:capstone2/screens/screens.dart';
import 'package:flutter/material.dart';

class RouteGenerator {
  static const String WelcomePage = '/';
  static const String LoginPage = '/login';
  static const String RegisterPage = '/register';
  static const String MainPage = '/main';
  static const String SearchPage = '/search';
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case WelcomePage:
        return MaterialPageRoute(builder: (_) => const WelcomeScreen());
      case LoginPage:
        return MaterialPageRoute(builder: (_) => const LoginScreen());
      case RegisterPage:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case MainPage:
        return MaterialPageRoute(builder: (_) => const MainScreen());
      case SearchPage:
      if (args is int) {
          return MaterialPageRoute(
              builder: (_) =>SearchScreen(index:args)
          );
        }
        return _errorRoute();
      // case randomPage:
      //   if (args is String) {
      //     return MaterialPageRoute(
      //         builder: (_) => SecondPage(data: args,)
      //     );
      //   }
      //   return _errorRoute();

      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (_) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('error'),
        ),
        body: const Center(
          child: Text('Error Page'),
        ),
      );
    });
  }
}
