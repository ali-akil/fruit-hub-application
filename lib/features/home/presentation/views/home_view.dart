import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const routeName = 'home_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text('HomeView'),
      ),
    );
  }
}
