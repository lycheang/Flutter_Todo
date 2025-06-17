import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/state_module/counter_logic.dart';
import 'package:flutter_application_1/state_module/state_detail_screen.dart';
import 'package:provider/provider.dart';
import 'counter_logic.dart';
class StateHomeScreen extends StatefulWidget {
  const StateHomeScreen({super.key});

  @override
  State<StateHomeScreen> createState() => _StateHomeScreenState();
}

class _StateHomeScreenState extends State<StateHomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("State Home Screen"),
        backgroundColor: Colors.amber,
        actions: [
          IconButton(
            onPressed: (){
              Navigator.of(context).push(
                CupertinoPageRoute(builder: (context)=>StateDetailScreen()),
              );
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
      body: _buildBody(),
    );
  }

// int _counter =0;

Widget _buildBody() {
  int counter = context.watch<CounterLogic>().counter;

  return SingleChildScrollView(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().decrease();
            },
            icon: Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () {
              context.read<CounterLogic>().increase();
            },
            icon: Icon(Icons.add),
          ),
           Text(
              "Cambodia, officially the Kingdom of Cambodia, is a country in Southeast Asia on the Indochinese Peninsula. It is bordered by Thailand to the northwest.",
              style: TextStyle(fontSize: 20 + counter.toDouble()),
            ),
        ],
      ),
    ),
  );
}
}