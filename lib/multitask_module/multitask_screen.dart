import 'package:flutter/material.dart';

class MultitaskScreen extends StatefulWidget {
  const MultitaskScreen({super.key});

  @override
  State<MultitaskScreen> createState() => _MultitaskScreenState();
}
   
class _MultitaskScreenState extends State<MultitaskScreen> {
  Future<int> add(int a,int b){
    return Future.value(a+b);

  }
  int sum(int a, int b) {
    return a + b;
  }

  @override
  Widget build(BuildContext context) {
    add(10,20).then((value) {
      debugPrint("value is $value");
    });
    int s=sum(10, 20);
    debugPrint("sum is $s");
    return Scaffold(
      appBar: AppBar(title: Text("Multitask Screen"),),
      body: _buildBody(),
    );
  }
  Future<String> _readFakeData(){
    return Future.delayed(Duration(seconds: 3), () {
      return "Fake Data";
    });
  }
  Widget _buildBody() {
    return Center(
      child: FutureBuilder<String>(
        future: _readFakeData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return Text(
              snapshot.data ?? "No Data",
              style: TextStyle(fontSize: 24),
            );
          } 
          else{
            return CircularProgressIndicator();
          }
        
        },
      )
      
    );
  }
}