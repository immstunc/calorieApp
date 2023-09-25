import 'package:flutter/material.dart';
import 'package:calorie_app/ui/calorie_calculator_screen.dart';
//import 'package:calorie_app/ui/calorie_multiplier_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calorie Calculator',
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: CalorieCalculatorScreen(),
    );
  }
}

// //class MyApp extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Calorie Multiplier',
//       theme: ThemeData(
//         primarySwatch: Colors.amber,
//       ),
//       home: CalorieMultiplierScreen(),
//     );
//   }
// //}