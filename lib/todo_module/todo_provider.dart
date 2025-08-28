import 'package:flutter/material.dart';
import 'package:flutter_application_1/todo_module/todo_login_logic.dart';
import 'package:flutter_application_1/todo_module/todo_splashscreen.dart';
import 'package:provider/provider.dart';

Widget TodoProvider() {
  return MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => TodoLoginLogic()),
    ],
    child:  TodoSplashScreen(),
  );
}
