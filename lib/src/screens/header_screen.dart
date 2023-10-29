import 'package:disenos/src/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HeaderScreen extends StatelessWidget {
  const HeaderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          decoration: BoxDecoration(border: Border.all()),
          child: HeaderDiagonal(),
        ),
      ),
    );
  }
}
