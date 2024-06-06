import 'package:flutter/material.dart';
import 'screens/First.dart';
import 'screens/Second.dart';
import 'screens/Third.dart';
import 'screens/Forth.dart';
import 'screens/Fifth.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => const FirstScreen(),
        '/second': (context) => const SecondScreen(),
        '/third': (context) => const ThirdScreen(),
        '/forth': (context) => const ForthScreen(),
        '/fifth': (context) => const FifthScreen(),
      },
    );
  }
}
