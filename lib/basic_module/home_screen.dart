import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  // const HomeScreen({super.key});
  // final pic1 =
    //     "https://img.cdn-pictorem.com/uploads/collection/E/EF5MND10RMF/900_Coolbits-Art_zore25.jpg";
    
  final pic2 =
        "https://imagedelivery.net/0vZ7NNrG1AM4WK7mdewxHw/8b8940e3-9a2f-4fbd-3b85-d7fe04ec5c00/public";

    final pic3 =
        "https://img.cdn-pictorem.com/uploads/collection/E/EF5MND10RMF/900_Coolbits-Art_zore22.jpg";
    final pic4 =
    "https://career-advice.jobs.ac.uk/wp-content/uploads/Japan-e1634207070862.jpg.optimal.jpg";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
      drawer: _buildDrawer(),
      endDrawer: _buildendDrawer(),
    );
  }
  AppBar _buildAppBar() {
    return AppBar(
      title: Text("កម្មវីធីខ្មែរ", style: TextStyle(fontFamily: "FREE Hand")),
      // backgroundColor: const Color.fromARGB(255, 198, 13, 226),
      // foregroundColor: Colors.black,
      // flexibleSpace: Image.network(pic4, fit: BoxFit.cover),
    );
  }
  Widget _buildDrawer(){
    return Drawer(child: Image.network(pic4, fit: BoxFit.cover));
  }
  Widget _buildendDrawer(){
    return Drawer(child: Image.network(pic3, fit: BoxFit.cover));
  }
  Widget _buildBody(){
    return Container(
      alignment: Alignment.center,
      color: Colors.yellow.shade200,
      child: _buildRoundBox(),
    );
  }
  Widget _buildCircleAvatar(){
    return CircleAvatar(
      radius:150,
      backgroundImage:NetworkImage(pic4),
    );
  }
  Widget _buildCircleImage(){
    return ClipOval(
      child: Image.network(pic4,width: 200,height: 200,fit: BoxFit.cover),
    );
  }
  Widget _buildRoundImage(){
    return ClipRRect(borderRadius: BorderRadius.circular(20),
    child: Image.network(pic2,width: 200,height: 300,fit: BoxFit.cover),
    );
  }
  Widget _buildRoundBox() {
  return Container(
    width: 150,
    height: 150,
    transform: Matrix4.rotationZ(0.3),
    transformAlignment: Alignment.center,
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      gradient: LinearGradient(
        colors: [Colors.pink, Colors.indigo],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.blueGrey.withAlpha(185),
          offset: Offset(0, 0),
          blurRadius: 10,
          spreadRadius: 5,
        ),
      ],
    ),
    child: Icon(Icons.home, color: Colors.white, size: 80),
  );
}

  Widget _buildImage(){
    return Center(
      child: Image.network(
        pic4,
        // color:Colors.blue,
        // colorBlendMode: BlendMode.colorBurn,
        // fit: BoxFit.cover,
      )
    );
  }
}
