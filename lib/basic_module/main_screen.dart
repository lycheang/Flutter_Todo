import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/Theme_logic.dart';
import 'package:flutter_application_1/basic_module/fb_screen.dart';
import 'package:flutter_application_1/basic_module/home_screen.dart';
import 'package:flutter_application_1/basic_module/login_screen.dart';
import 'package:flutter_application_1/basic_module/tiktok_screen.dart';
import 'package:provider/provider.dart';

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
    // selectedItemColor: Colors.pink,
    // unselectedItemColor: Colors.grey,
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

    bool dark=context.watch<ThemeLogic>().dark;
    return Drawer(
      // backgroundColor: Colors.white,
      child: ListView(
        children: [
          DrawerHeader(child: Image.network(logo)),
          ListTile(
            leading:Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              // context.read<ThemeLogic>().changetoLight();
              Navigator.of(context).pop();
            },
            // trailing: dark==false?Icon(Icons.check_circle):null,
          ),
          ListTile(
            leading:Icon(Icons.settings),
            title: Text("Setting"),
            onTap: (){
              // context.read<ThemeLogic>().changeToDark();
              Navigator.of(context).pop();
            },
            // trailing: dark==true?Icon(Icons.check_circle):null,
          ),
          ListTile(
            leading:Icon(Icons.call),
            title: Text("Contact Us"),
            onTap: (){
              Navigator.of(context).pop();
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(CupertinoIcons.moon_fill),
            title: Text("Night Mode"),
            trailing: Switch(
              value: dark,
              onChanged: (value){
                context.read<ThemeLogic>().setDark(value);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Image.network("https://www.nme.com/wp-content/uploads/2023/12/big-bang-daesung-comeback-solo.jpg"),
          ),
        ],
      ),
    );
   }
}