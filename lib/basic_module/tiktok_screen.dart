import 'package:flutter/material.dart';
import 'package:flutter_application_1/basic_module/photo_constant.dart';
import 'photo_constant.dart';
class TiktokScreen extends StatelessWidget {
  const TiktokScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.black,
      // appBar:AppBar(
      //   title:Text("tiktok_screen"),

      // ),
      body: _buildBody(),
      // bottomNavigationBar: _buildAppBar(),
    );
  }

  Widget _buildAppBar(){
    return BottomAppBar(
       color: Colors.black,
      child: Row(
       
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.home, color: Colors.white, size: 30,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white, size: 30,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.bookmark, color: Colors.white, size: 30,),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.more_horiz, color: Colors.white, size: 30,),
          ),
        ],
      ),
    );
  }
  //for body only 1 widget is allowed if need more than 2 need to use pageview 
  Widget _buildBody(){
    return Stack(
      alignment: Alignment.center,
      children: [_buildMainView(),
        Positioned(
          top: 20,
          child: _buildTopMenu(),)
            ],
          ); 
  }
  Widget _buildTopMenu(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        _buildFollowingButton(),
        _buildForYoubutton(),
      ],
    );
  }
  Widget _buildFollowingButton(){
    return TextButton(
      onPressed: () {},
      child: Text("Following", style: TextStyle(color: Colors.white, fontSize: 20),),
    );
  }
  Widget _buildForYoubutton(){
    return TextButton(
      onPressed: () {},
      child: Text("For You", style: TextStyle(color: Colors.white, fontSize: 20),),
    );
  }
  Widget _buildMainView(){
    return PageView(
      children: [
        _buildFollowing(),
        _buildForYou(),
      ],
    );
  }
  //homework
  Widget _buildFollowing() {
  return PageView.builder(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: actorList.length,
    itemBuilder: (context, index) {
      final item = actorList[index];
      return _buildPostContent(item);
    },
  );
}
//homework 
Widget _buildForYou() {
  return PageView.builder(
    physics: BouncingScrollPhysics(),
    scrollDirection: Axis.vertical,
    itemCount: imageList.length,
    itemBuilder: (context, index) {
      final item = imageList[index];
      return _buildPostContent(item);
    },
  );
}
  //classwork
  // Widget _buildFollowing(){
  //   return PageView.builder(
  //     physics: BouncingScrollPhysics(),
  //     scrollDirection: Axis.vertical,
  //     itemBuilder: (context, index) {
  //       final item=actorList[index];
  //       return Image.network(item, fit: BoxFit.cover,);
  //     },
  //   );
  // }
  // tiktok style ux
  // Widget _buildForYou(){
  //   return PageView.builder(
  //     physics: BouncingScrollPhysics(),
  //     scrollDirection: Axis.vertical,
  //     itemBuilder: (context, index) {
  //       final item=imageList[index];
  //       return Image.network(item, fit: BoxFit.cover,);
  //     },
  //   );
  // }
  

Widget _buildPostContent(String imageUrl) {
  return Stack(
    children: [
      Positioned.fill(
        child: Image.network(imageUrl, fit: BoxFit.cover),
      ),
      // Bottom-left user info
      Positioned(
        bottom: 20,
        left: 16,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text(
              'Flutter Developer',
              style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
            ),
            SizedBox(height: 4),
            Text(
              'Flutter Content 🌌 #coding #IT\n#webdevelopment #computerscience',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
      ),
      // Bottom-right vertical icons
      Positioned(
        bottom: 20,
        right: 16,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjDFqURmmmFDlgWyoUvOw1ECdA2jVqujM5Rw&s'), // Replace with actual profile pic
              radius: 24,
            ),
            SizedBox(height: 16),
            _iconWithText(Icons.favorite_outlined, '1000' ),
            SizedBox(height: 16),
            _iconWithText(Icons.insert_comment, '500'),
            SizedBox(height: 16),
            _iconWithText(Icons.bookmark_rounded, '2500'),
            SizedBox(height: 16),
            _iconWithText(Icons.switch_access_shortcut_add_rounded, '500'),
          ],
        ),
      ),
    ],
  );
}

Widget _iconWithText(IconData icon, String count) {
  return Column(
    children: [
      Icon(icon, color: Colors.white, size: 32),
      SizedBox(height: 4),
      Text(count, style: TextStyle(color: Colors.white)),
    ],
  );
}
}

  
