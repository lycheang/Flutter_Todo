import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LayoutScreen extends StatefulWidget {
  const LayoutScreen({super.key}); // ✅ Added missing semicolon

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title:_buildTopMenu()
    );
  }

  Widget _buildBody() {
    return _buildActorGridView();
  }
  List<String> _actorList = [
    "https://i2.wp.com/www.themodestman.com/wp-content/uploads/2018/11/Kevin-Hart-1536x1229.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8QhDLmiDDUFrdQCn0OmjZsSXqqg3YPpY-6w&s",
    "https://upload.wikimedia.org/wikipedia/commons/d/d3/Jason_Statham_2018.jpg",
    "https://m.media-amazon.com/images/M/MV5BMTI4OTk0MjQ1OV5BMl5BanBnXkFtZTcwNTE3NjM3Mw@@._V1_FMjpg_UX1000_.jpg",
    "data:image/jpeg;base64,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",
    "https://www.usatoday.com/gcdn/presto/2018/11/30/USAT/90b536b7-dd4c-42a3-bf31-7d25dc636165-PAUL_WALKER.jpg?crop=1905,1429,x0,y0",
    "https://upload.wikimedia.org/wikipedia/commons/f/f1/John_Cena_on_the_Impaulsive_podcast%2C_2024.png",
    "https://upload.wikimedia.org/wikipedia/commons/thumb/1/11/Dwayne_%22The_Rock%22_Johnson_Visits_the_Pentagon_%2841%29_%28cropped%29.jpg/960px-Dwayne_%22The_Rock%22_Johnson_Visits_the_Pentagon_%2841%29_%28cropped%29.jpg",
  ];
  Widget _buildActorGridView(){
    return GridView.builder(
      padding: EdgeInsets.all(5),
      physics: BouncingScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
        childAspectRatio: 2/3,
      ),
      itemCount: _actorList.length,
      itemBuilder: (context, index) {
        final item = _actorList[index];
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(item, fit: BoxFit.cover),
          ),
        );
      },
    );
  }
  Widget _buildGridViewExtent(){
    return GridView.extent(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      maxCrossAxisExtent: 150,
      childAspectRatio: 2/3,
      mainAxisSpacing:5,
      crossAxisSpacing: 5,
      padding: EdgeInsets.all(5),
      children: [
        Container(color: Colors.pink, width: 100, height: 100),
        Container(color: Colors.blue, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.yellow, width: 100, height: 100),
        Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.purple, width: 100, height: 100),
      ],
    );
  }
  Widget _buildGridViewCount(){
    return GridView.count(
      scrollDirection: Axis.vertical,
      physics: BouncingScrollPhysics(),
      crossAxisCount: 3,
      childAspectRatio: 2/3,
      mainAxisSpacing:5,
      crossAxisSpacing: 5,
      padding: EdgeInsets.all(5),
      children: [
        Container(color: Colors.pink, width: 100, height: 100),
        Container(color: Colors.blue, width: 100, height: 100),
        Container(color: Colors.green, width: 100, height: 100),
        Container(color: Colors.yellow, width: 100, height: 100),
        Container(color: Colors.red, width: 100, height: 100),
        Container(color: Colors.purple, width: 100, height: 100),
      ],
    );
  }

  List<String> _imageList = [
    "https://m.media-amazon.com/images/M/MV5BZDU5MDNiMGItYjVmZi00NDUxLTg2OTktNGE0NzNlNzM4NzgyXkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
    "https://i.ytimg.com/vi/-dXoapBkAUs/maxresdefault.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRH4itR4T2MqrmfkfZxW4VzFjy1gs6esw2vMw&s",
    "https://m.media-amazon.com/images/M/MV5BNjIwZWY4ZDEtMmIxZS00NDA4LTg4ZGMtMzUwZTYyNzgxMzk5XkEyXkFqcGc@._V1_FMjpg_UX1000_.jpg",
  ];

  Widget _buildMovieListView() {
  return ListView.builder(
    physics: BouncingScrollPhysics(),
    itemCount: _imageList.length,
    itemBuilder: (context, index) {
      final item = _imageList[index];
      return Padding(
        padding: const EdgeInsets.all(5.0),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image.network(item, fit: BoxFit.cover),
        ),
      );
    },
  );
}

  Widget _buildforListView(){
    return SizedBox(
      height: 300,
      child: ListView(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        children: [
          Container(color:Colors.amber,width: 100,height: 120,),
          Container(color:Colors.pink,width: 120,height: 150,),
          Container(color:Colors.blue,width: 130,height: 180,),
          Container(color:Colors.green,width: 140,height: 180,),
          Container(color:Colors.yellow,width: 150,height: 200,),
        ],
      ),
    );
  }
  Widget _buildListView(){
    return ListView(
      //scrollDirection: Axis.horizontal,
      physics: BouncingScrollPhysics(),
      children: [
        Container(color:Colors.amber,width: 100,height: 120,),
        Container(color:Colors.pink,width: 120,height: 150,),
        Container(color:Colors.blue,width: 130,height: 180,),
        Container(color:Colors.green,width: 140,height: 180,),
        Container(color:Colors.yellow,width: 150,height: 200,),
      ],
    );
  }
  Widget _buildStack(){
      return Stack(
        alignment: Alignment.center,
         children:[
          Container(color:Colors.pink,width: 400,height: 300,),
          Container(color:Colors.blue,width: 300,height: 200,),
          Container(color:Colors.green,width: 200,height: 100,),
          Container(color:Colors.yellow,width: 100,height: 50,),
          Positioned(
            right: 10,
            bottom: 10,
            child: Container(
              color: Colors.purple,
              width: 150,
              height: 50,
            ),
          ),
         ], 
      );
  }
  Widget _buildRow() {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child:Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Container(color: Colors.pink, width: 280, height: 50),
          SizedBox(width: 20), // ✅ Added missing SizedBox
          Container(color: Colors.blue, width: 250, height: 70),
          SizedBox(width: 20), // ✅ Added missing SizedBox
          Container(color: Colors.green, width: 250, height: 90),
          SizedBox(width: 20), // ✅ Added missing SizedBox
          Container(color: Colors.yellow, width: 250, height: 40),
          SizedBox(width: 20), // ✅ Added missing SizedBox
          Container(color: Colors.red, width: 250, height: 80),
        ],
      ),
    )
     ); // ✅ Added missing semicolon
  }
  Widget _buildColumn() {
    return SingleChildScrollView(
      physics:BouncingScrollPhysics(),
      child:Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(color: Colors.pink, width: 180, height: 250),
          Container(color: Colors.blue, width: 150, height: 270),
          Container(color: Colors.green, width: 140, height: 290),
          Container(color: Colors.yellow, width: 160, height: 240),
          Container(color: Colors.red, width: 180, height: 280),
        ],
      ),
    )
     ); // ✅ Added missing semicolon
  }
  Widget _buildTopMenu(){
    return SingleChildScrollView(
      physics:BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child:Row(
        children: [
          _buildMenu("New release"),
          _buildMenu("Popular TV Series"),
          _buildMenu("Popular Movies"),
          _buildMenu("Top Rated"),
          _buildMenu("Action"),
          _buildMenu("Adventure"),
          _buildMenu("Animation"),
          _buildMenu("Comedy"),

        ],
      ),

    );
  }
Widget _buildMenu(String title) {
  return Padding(
    padding: const EdgeInsets.symmetric(horizontal: 5),
    child: TextButton(
      style: TextButton.styleFrom(
        backgroundColor: Colors.pink.shade300,
        foregroundColor: Colors.white,
      ),
      onPressed: () {
        // Handle button press
      },
      child: Text(title),
    ),
  );
}
Widget _buildIconRow(){
  return Center(
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceAround,
    children:[
      Container(color: Colors.pink, width: 50, height: 50),
      SizedBox(width: 10),
      Container(color: Colors.red, width: 50, height: 50),
      SizedBox(width: 10),
      Container(color: Colors.green, width: 50, height: 50),
      Spacer(),
      Container(color: Colors.blue, width: 50, height: 50),
    ]
    ),
  );
}

}
