import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_module/state_detail_screen.dart';
import 'package:flutter_application_1/state_module/state_home_screen.dart';

class StateApp extends StatelessWidget {
  const StateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: StateHomeScreen(),);
  }
}