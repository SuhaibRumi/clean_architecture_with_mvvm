import 'package:clean_architecture_with_mvvm/src/utils/routes_name.dart';
import 'package:flutter/material.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Clean Architure With MVVM",
        ),
        actions: const [Icon(Icons.more_vert)],
      ),
      body: Center(
          child: TextButton(
              onPressed: () {
                Navigator.pushNamed(context, RoutesName.home);
              },
              child: const Text(" Touch it"))),
    );
  }
}
