import 'package:flutter/material.dart';

void main() {
  runApp(const BmiCalculator());
}

 class BmiCalculator extends StatefulWidget {
  const BmiCalculator({super.key});

  @override
  State<BmiCalculator> createState() => _BmiCalculatorState();
}

class _BmiCalculatorState extends State<BmiCalculator> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        
      ),
    );
  }
}
