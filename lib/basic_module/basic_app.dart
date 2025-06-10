import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/fb_screen.dart';
import 'package:flutter_application_1/basic_module/layout_screen.dart';
import 'package:flutter_application_1/basic_module/login_screen.dart';
import 'package:flutter_application_1/basic_module/main_screen.dart';
import 'package:flutter_application_1/basic_module/post_screen.dart';
import 'package:flutter_application_1/basic_module/tiktok_screen.dart';
class BasicApp extends StatelessWidget {
  const BasicApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TiktokScreen(),
    );
  }
}
