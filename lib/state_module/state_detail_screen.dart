import 'package:flutter/material.dart';

import 'package:provider/provider.dart';
import 'counter_logic.dart';
class StateDetailScreen extends StatefulWidget {
  // const StateDetailScreen({super.key});
  // int number;

  // StateDetailScreen(this.number);

  @override
  State<StateDetailScreen> createState() => _StateDetailScreenState();
}

class _StateDetailScreenState extends State<StateDetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Detail Screen"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(onPressed: (){
            context.read<CounterLogic>().decrease();
          },
          icon: Icon(Icons.remove),
          ),
          IconButton(onPressed: (){
            context.read<CounterLogic>().increase();
          },
          icon: Icon(Icons.add),
          )
        ],
      ),
      body: _buildBody(),
    );
}

Widget _buildBody() {
  // Ensure counter is used as a double for font size
  double size = context.watch<CounterLogic>().counter.toDouble();

  return SingleChildScrollView(
    child: Column(
      // crossAxisAlignment: CrossAxisAlignment.start, // optional alignment
      children: [
        // Optional: Uncomment if you want buttons to increase/decrease font size
        // IconButton(
        //   onPressed: () {
        //     context.read<CounterLogic>().decrease();
        //   },
        //   icon: Icon(Icons.remove),
        // ),
        // IconButton(
        //   onPressed: () {
        //     context.read<CounterLogic>().increase();
        //   },
        //   icon: Icon(Icons.add),
        // ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Cambodia, often referred to as the 'Kingdom of Wonder', is a Southeast Asian nation known for its rich history, stunning temples, and warm hospitality. With its ancient archaeological sites, vibrant cities, and beautiful landscapes, Cambodia offers a truly unique and enriching travel experience.",
            style: TextStyle(fontSize: 20 + size),
          ),
        ),
      ],
    ),
  );
}

}