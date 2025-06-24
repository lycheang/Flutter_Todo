import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/Theme_logic.dart';
import 'package:flutter_application_1/basic_module/basic_app.dart';
import 'package:flutter_application_1/basic_module/font_theme.dart';
import 'package:provider/provider.dart';

Widget basicProvider(){
  return MultiProvider(
    providers: [ChangeNotifierProvider(create: (context)=>ThemeLogic(),),
                ChangeNotifierProvider(create: (context)=>FontTheme(),)
               ],
    child: BasicApp(),
  );
}