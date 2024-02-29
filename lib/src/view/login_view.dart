import 'package:clean_architecture_with_mvvm/src/utils/routes_name.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Login Screen"),
      ),
      body: Center(
        child: InkWell(
          child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.home);
              },
              child: const Text("Login")),
        ),
      ),
    );
  }
}
