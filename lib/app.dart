import 'package:flutter/material.dart';
import 'src/view/screen/home.dart';

class ProjectOne extends StatelessWidget {
  const ProjectOne({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomeScreen(),
    );
  }
}
