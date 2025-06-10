import 'package:flutter/material.dart';
import 'photo_constant.dart';
class FbScreen extends StatelessWidget {
  const FbScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: _buildBody(),
    );
  }
  
  AppBar _buildAppBar() {
    return AppBar(
      centerTitle: true,
      title: Text("Movie App"),
      backgroundColor: Colors.blue,
      foregroundColor: Colors.white,
    );
  }
  Widget _buildBody(){
    return _buildMainListView();
  }
  Widget _buildMainListView(){
      return ListView(
        physics: BouncingScrollPhysics(),
        children: [
          _buildActorListView(),
          _buildImageListView(),
          _buildCircleActorListView(),
          _buildImageListView()
        ],
      );
  }
  Widget _buildActorListView() {
    final double pad = 10;
    return SizedBox(
      height: 300,
      child: ListView.builder(
        itemCount: actorList.length,
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = actorList[index];
          return Padding(
            padding: EdgeInsets.only(top: pad, bottom: pad, left: pad),
            child: SizedBox(
              width: 180,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(pad),
                child: Image.network(item, fit: BoxFit.cover),
              ),
            ),
          );
        },
      ),
    );
  }

  
  Widget _buildImageListView() {
  final double pad = 10;

  return ListView.builder(
    shrinkWrap: true,
    physics: NeverScrollableScrollPhysics(),
    itemCount: imageList.length,
    itemBuilder: (context, index) {
      final item = imageList[index];
      return Padding(
        padding: EdgeInsets.fromLTRB(pad, 0, pad, pad),
        child: SizedBox(
          height: 300,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.network(
              item,
              fit: BoxFit.cover,
              loadingBuilder: (context, child, loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(),
                );
              },
              errorBuilder: (context, error, stackTrace) => Center(
                child: Icon(Icons.broken_image, size: 50, color: Colors.grey),
              ),
            ),
          ),
        ),
      );
    },
  );
}
Widget _buildCircleActorListView(){
  final double pad = 5;
  final double size = 200;
  return SizedBox(
    height: size,
    child: ListView.builder(
      itemCount: actorList.length,
      physics: BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      itemBuilder: (context, index) {
        final item = actorList[index];
        return Padding(
          padding: EdgeInsets.only(top: pad, bottom: pad, left: pad),
          child: SizedBox(
            width: size,
            child: ClipRRect(
              child: CircleAvatar(backgroundImage: NetworkImage(item),)
            ),
          ),
        );
      },
    ),
  );
}
}

  
