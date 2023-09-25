import 'package:flutter/material.dart';
import 'package:calorie_app/ui/calorie_calculator_repository.dart';

class CalorieCalculatorScreen extends StatefulWidget {
  @override
  _CalorieCalculatorScreenState createState() =>
      _CalorieCalculatorScreenState();
}

class _CalorieCalculatorScreenState extends State<CalorieCalculatorScreen> {
  final CalorieCalculatorRepository _repository = CalorieCalculatorRepository();

  double _weight = 0;
  double _height = 0;
  int _age = 0;
  String _gender = '';

  double _calories = 0;

  void _calculateCalories() {
    setState(() {
      _calories =
          _repository.calculateCalories(_weight, _height, _age, _gender);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kalori Hesaplama'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) => _weight = double.tryParse(value) ?? 0,
              decoration: InputDecoration(labelText: 'Weight (kg)'),
            ),
            TextField(
              onChanged: (value) => _height = double.tryParse(value) ?? 0,
              decoration: InputDecoration(labelText: 'Height (cm)'),
            ),
            TextField(
              onChanged: (value) => _age = int.tryParse(value) ?? 0,
              decoration: InputDecoration(labelText: 'Age'),
            ),
            TextFormField(
              onChanged: (value) => _gender = value,
              decoration: InputDecoration(labelText: 'Gender (male/female)'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateCalories,
              child: Text('Calorie You Need'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Calories: $_calories',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
//             
          ]
        
          
        ),
      ),
    );
  }
}