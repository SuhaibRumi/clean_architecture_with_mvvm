import 'package:clean_architecture_with_mvvm/src/view/home_view.dart';
import 'package:clean_architecture_with_mvvm/src/view/login_view.dart';
import 'package:flutter/material.dart';

import 'routes_name.dart';

class Routes {
  static Route<dynamic> genrateRoute(RouteSettings settings) {
    // final agrumne = settings.arguments;

    switch (settings.name) {
      case RoutesName.home:
        return MaterialPageRoute(
            builder: (BuildContext context) => const HomeView());
      case RoutesName.login:
        return MaterialPageRoute(
            builder: (BuildContext context) => const LoginView());
      default:
        return MaterialPageRoute(builder: (_) {
          return const Scaffold(
            body: Center(
              child: Text("Page not found"),
            ),
          );
        });
    }
  }
}
