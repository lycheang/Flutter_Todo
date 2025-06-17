 import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  // const DetailScreen({super.key});

  String item;
  DetailScreen(this.item);
  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      appBar: AppBar(
        // backgroundColor: Colors.grey.shade500,
        // foregroundColor: Colors.white,
        title: Text("Detail Screen"),
      ),
      body: Image.network(this.widget.item)
    );
  }
}
