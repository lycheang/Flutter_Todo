import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/Theme_logic.dart';
import 'package:flutter_application_1/basic_module/fb_screen.dart';
import 'package:flutter_application_1/basic_module/font_theme.dart';
import 'package:flutter_application_1/basic_module/home_screen.dart';
import 'package:flutter_application_1/basic_module/login_screen.dart';
import 'package:flutter_application_1/basic_module/text_screen.dart';
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
        TextScreen(),
        TiktokScreen(),
        FbScreen(),
        // LoginScreen(),
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
  Widget _buildDrawer() {
  final logo =
      "https://cdn-images.dzcdn.net/images/artist/7fcd4a0752edfaca824888ced63a5ac4/1900x1900-000000-80-0-0.jpg";
   int themeIndex = context.watch<ThemeLogic>().themeIndex;
  // final bool dark = context.watch<ThemeLogic>().dark;

  return Drawer(
    child: ListView(
      children: [
        DrawerHeader(child: Image.network(logo)),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text("Home"),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: const Icon(Icons.settings),
          title: const Text("Setting"),
          onTap: () => Navigator.of(context).pop(),
        ),
        ListTile(
          leading: const Icon(Icons.call),
          title: const Text("Contact Us"),
          onTap: () => Navigator.of(context).pop(),
        ),
         Divider(),
        // ListTile(
        //   leading: const Icon(CupertinoIcons.moon_fill),
        //   title: const Text("Night Mode"),
        //   // trailing: Switch(
        //   //   // value: dark,
        //   //   // onChanged: (value) {
        //   //   //   context.read<ThemeLogic>().setDark(value);
        //   //   },
        //   ),
        // ),
        ExpansionTile(
          title: const Text("Theme Color"),
          initiallyExpanded: true,
          children: [
            ListTile(
              leading: const Icon(Icons.phone_android),
              title: const Text("To System Mode"),
              onTap: () => context.read<ThemeLogic>().changeToSystem(),
              trailing: themeIndex == 0
                  ? const Icon(Icons.check_circle)
                  : null,
            ),
            ListTile(
              leading: const Icon(Icons.dark_mode),
              title: const Text("To Dark Mode"),
              onTap: () => context.read<ThemeLogic>().changeToDark(),
              trailing: themeIndex == 1
                  ? const Icon(Icons.check_circle)
                  : null,
            ),
            ListTile(
              leading: const Icon(Icons.light_mode),
              title: const Text("To Light Mode"),
              onTap: () => context.read<ThemeLogic>().changetoLight(),
              trailing: themeIndex == 2
                  ? const Icon(Icons.check_circle)
                  : null,
            ),
          ],
        ),
        Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () => context.read<FontTheme>().decrease(),
              icon: const Icon(Icons.text_decrease_rounded),
            ),
            IconButton(
              onPressed: () => context.read<FontTheme>().increase(),
              icon: const Icon(Icons.text_increase_rounded),
            ),
          ],
        ),
        const Divider(),
        Padding(
          padding: const EdgeInsets.all(20),
          child: Image.network(
            "https://www.nme.com/wp-content/uploads/2023/12/big-bang-daesung-comeback-solo.jpg",
          ),
        ),
      ],
    ),
  );
}

}