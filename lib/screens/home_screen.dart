import 'package:flutter/material.dart';
import 'package:disenos/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Stack(
        children: [
          //TODO: background
          Background(),
        ],
      ),
    );
  }
}
