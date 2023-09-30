
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewsFeed extends StatelessWidget {
  final List<String> Images = [
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",
    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg",

    // Add more image URLs here
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.pink,
        title: Text('News Feed'),
      ),
      body: OrientationBuilder(
        builder: (context, orientation) {
          return (orientation == Orientation.portrait)
              ? buildImageList()
              : buildImageGrid();
        },
      ),
    );
  }

  Widget buildImageList() {
    return ListView.builder(
      itemCount: Images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.only(left: 70,top: 5,right: 70, bottom: 5),
            child: Image.network(
              Images[index],
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }

  Widget buildImageGrid() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
      ),
      itemCount: Images.length,
      itemBuilder: (context, index) {
        return Card(
          child: Container(
            padding: EdgeInsets.all(10),
            child: Image.network(
              Images[index],
              width: 150,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
        );
      },
    );
  }
}