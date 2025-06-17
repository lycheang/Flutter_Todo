import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/fb_screen.dart';
import 'package:flutter_application_1/basic_module/login_screen.dart';
import 'package:flutter_application_1/basic_module/tiktok_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  final _scaffoldKey=GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: _buildBody(),
      bottomNavigationBar: _buildBottomNavBar(),
      endDrawer: _buildDrawer(),
      // drawer: Drawer(),
    );
  }
  Widget _buildBody(){
    return IndexedStack(
      index: _navindex,
      children: [
        TiktokScreen(),
        FbScreen(),
        LoginScreen(),
      ],
    );
  }
  int _navindex=0;
  Widget _buildBottonNavBar(){
    return BottomNavigationBar(items: [
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Shop"),
    ]);
  }
  Widget _buildBottomNavBar(){
    return BottomNavigationBar(currentIndex: _navindex,
    onTap: (index){
      if (index==3){
        _scaffoldKey.currentState!.openEndDrawer();
      }
      else{
        setState(() {
          _navindex=index;
        });
      }
    },
    selectedItemColor: Colors.pink,
    unselectedItemColor: Colors.grey,
    items:[
      BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
      BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), label: "Shop"),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
      BottomNavigationBarItem(icon: Icon(Icons.menu), label: "Menu"),
    ]
    );
  }
   Widget _buildDrawer(){
    final logo="https://cdn-images.dzcdn.net/images/artist/7fcd4a0752edfaca824888ced63a5ac4/1900x1900-000000-80-0-0.jpg";
    return Drawer(
      backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(child: Image.network(logo)),
          ListTile(
            leading:Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text("Settings"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          ListTile(
            leading:Icon(Icons.call),
            title: Text("Contact Us"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network("https://www.nme.com/wp-content/uploads/2023/12/big-bang-daesung-comeback-solo.jpg"),
          ),
        ],
      ),
    );
   }
   
}