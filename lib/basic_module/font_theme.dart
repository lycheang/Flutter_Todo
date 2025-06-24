import 'package:flutter/material.dart';

class FontTheme extends ChangeNotifier{
  double _size=17; //default;
  double get size => _size;

  void increase(){
    if(_size<30) _size += 3;//size cannot be more than 30
    notifyListeners();
  }
  void decrease(){
    if(_size>12) _size-= 3;// size cannot be more less 12
    notifyListeners();
  }
}