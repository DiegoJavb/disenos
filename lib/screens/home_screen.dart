import 'package:flutter/material.dart';

import 'package:disenos/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //TODO: background
          const Background(),
          //TODO: HomeBody
          _HomeBody(),
        ],
      ),
      //TODO: botton navigation
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}

class _HomeBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO: titles
          PageTitle(),
          //TODO: Card Table
          CardTable()
        ],
      ),
    );
  }
}
