import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:disenos/src/screens/scroll_design.dart';
import 'package:disenos/src/screens/basic_design.dart';
import 'package:disenos/src/screens/home_screen.dart';
import 'package:disenos/src/screens/header_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: 'header_screen',
      routes: {
        'basic_design': (_) => const BasicDesignScreen(),
        'scroll_design': (_) => const ScrollDesignScreen(),
        'home_screen': (_) => const HomeScreen(),
        'header_screen': (_) => const HeaderScreen(),
      },
    );
  }
}
