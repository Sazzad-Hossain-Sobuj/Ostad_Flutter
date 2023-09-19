import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
   HomeScreen({Key? key}) : super(key: key);

  var MyItems = [
    {'img':'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg','title':'cartoon 1'},
    {'img':'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg','title':'cartoon 2'},
    {'img':'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg','title':'cartoon 3'},
    {'img':'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg','title':'cartoon 4'},
    {'img':'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg','title':'cartoon 5'},
    {'img':'https://img.freepik.com/free-photo/cute-ai-generated-cartoon-bunny_23-2150288870.jpg','title':'cartoon 6'},
  ];
  
  MySnackBar(context,msg){
    return ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text(msg)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dynamic ListView builder'),
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: MyItems.length,
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              MySnackBar(context, MyItems[index]['title']);
            },
            child: Container(
              margin: EdgeInsets.all(10),
              height: 200,
              width: double.infinity,
              child: Image.network(
                MyItems[index]['img']!,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
