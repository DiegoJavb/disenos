import 'package:disenos/widgets/page_title.dart';
import 'package:flutter/material.dart';
import 'package:disenos/widgets/background.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const Background(),
          //TODO: HomeBody
          _HomeBody(),
        ],
      ),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          //TODO: titles
          PageTitle()
        ],
      ),
    );
  }
}
