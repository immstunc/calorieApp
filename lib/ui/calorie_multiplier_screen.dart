import 'package:flutter/material.dart';

class CalorieMultiplierScreen extends StatefulWidget {
  @override
  _CalorieMultiplierScreenState createState() => _CalorieMultiplierScreenState();
}

class _CalorieMultiplierScreenState extends State<CalorieMultiplierScreen> {
  double _calories = 0;
  double _multiplier = 1;

  void _calculateCalories() {
    setState(() {
      _calories = _multiplier * 2000; // Replace 2000 with your base calorie value
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calorie Multiplier'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              onChanged: (value) {
                setState(() {
                  _multiplier = double.tryParse(value) ?? 1;
                });
              },
              keyboardType: TextInputType.number,
              decoration: InputDecoration(labelText: 'Multiplier'),
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: _calculateCalories,
              child: Text('Calculate Calories'),
            ),
            SizedBox(height: 16.0),
            Text(
              'Calories: $_calories',
              style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}
