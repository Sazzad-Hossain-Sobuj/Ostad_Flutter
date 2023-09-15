import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Grid-View',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        toolbarHeight: 100,
        elevation: 30,
        backgroundColor: Colors.teal,
        
        leading: Icon(Icons.home),
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.menu)),
        ],
      ),

      body: Center(
        child: GridView(
          padding: EdgeInsets.all(10),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10),
        children: [
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
          Image.network('https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg'),
        ],
        ),

      ),

    );
  }
}
