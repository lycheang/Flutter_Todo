import 'package:flutter/material.dart';
import 'package:flutter_application_1/multitask_module/multitask_screen.dart';

class Multitaskapp extends StatelessWidget {
  const Multitaskapp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MultitaskScreen(),
    );
  }
}