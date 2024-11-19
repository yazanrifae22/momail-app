import 'package:flutter/material.dart';
import 'package:momail/features/splash/presentation/pages/splash_page.dart';

class GenerateScreen {
  static Route<dynamic> onGenerate(RouteSettings value) {
    // ignore: avoid_print
    print(value.name);
    if (value.name == RouteName.splashPage) {
      return MaterialPageRoute(builder: (context) => const SplashPage());
    } else {
      return MaterialPageRoute(builder: (context) => const InvalidRoute());
    }
  }
}

class InvalidRoute extends StatelessWidget {
  const InvalidRoute({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("invalid route"),
      ),
    );
  }
}

class RouteName {
  static const String splashPage = '/';
}
