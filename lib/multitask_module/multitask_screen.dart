import 'package:flutter/material.dart';
import 'package:flutter_application_1/multitask_module/api_service.dart';

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
      child: FutureBuilder<List<Map<String, dynamic>>>(
        future: ApiService.read(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildListView(snapshot.data ?? []);
          } 
          else{
            return CircularProgressIndicator();
          }
        },
      )
      
    );
  }
  Widget _buildListView(List<Map<String, dynamic>> items) {
    return ListView.builder(
      physics: BouncingScrollPhysics(),
      itemCount: items.length,
      itemBuilder: (context, index) {
        final item = items[index];
        return Card(
          child: ListTile(
            title: Text(item['title']),
            subtitle: Image.network(item['image']),
          ),
        );
      },
    );
  }
}