import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<Map<String, dynamic>>> read() async{
    final String url="https://fakestoreapi.com/products";
    http.Response response = await http.get(
      Uri.parse(url));
    List list =jsonDecode(response.body);
    List <Map<String, dynamic>> mapList = list.map((x)=> x as Map<String, dynamic>).toList();
    return mapList;
  }
}