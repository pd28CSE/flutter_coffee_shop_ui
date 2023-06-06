import 'package:flutter/material.dart';

import './screens/home_screen.dart';
import './screens/coffee_detail_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Coffee App',
      initialRoute: HomeScreen.routeName,
      routes: {
        HomeScreen.routeName: (cntxt) => const HomeScreen(),
        CoffeeDetailsScreen.routeName: (cntxt) => const CoffeeDetailsScreen(),
      },
    );
  }
}
