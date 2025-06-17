import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/Theme_logic.dart';
import 'package:flutter_application_1/basic_module/detail_screeen.dart';
import 'package:flutter_application_1/basic_module/fb_screen.dart';
import 'package:flutter_application_1/basic_module/layout_screen.dart';
import 'package:flutter_application_1/basic_module/login_screen.dart';
import 'package:flutter_application_1/basic_module/main_screen.dart';
import 'package:flutter_application_1/basic_module/post_screen.dart';
import 'package:flutter_application_1/basic_module/tiktok_screen.dart';
import 'package:provider/provider.dart';
class BasicApp extends StatelessWidget {
  // const BasicApp({super.key}); 
  @override
  Widget build(BuildContext context) {
    bool dark=context.watch<ThemeLogic>().dark;

    return MaterialApp(home: MainScreen(),
    //change dark and light mode theme,
    themeMode: dark ? ThemeMode.dark:ThemeMode.light,

    theme: _lightTheme(),
    darkTheme: _darktheme(),
    );
  }
  ThemeData _darktheme(){
    Color col1=Colors.red;
    return ThemeData(
      
       brightness: Brightness.dark,
       appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor: Colors.black,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
       ),
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: col1,
        unselectedItemColor: Colors.grey,
       ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.black,
      ),
      listTileTheme: ListTileThemeData(
        textColor: Colors.white,
        iconColor: col1,
      ),
    );
  }
  ThemeData _lightTheme(){
    Color col1=Color.fromARGB(255, 162, 4, 138);
    return ThemeData(
      brightness: Brightness.light,
       appBarTheme: AppBarTheme(
        centerTitle: true,
        backgroundColor:col1,
        foregroundColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
        ),
       ),
       bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: col1,
        unselectedItemColor: Colors.grey,
       ),
      drawerTheme: DrawerThemeData(
        backgroundColor: Colors.white70,
      ),
    );
  }
}
