import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  
 MySnackBar(msg,context){
   return ScaffoldMessenger.of(context).showSnackBar(
       SnackBar(content: Text(msg))
       );
 }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SnackBar'),
        titleSpacing: 50,
        toolbarHeight: 60,
        elevation: 40,
        backgroundColor: Colors.teal,

        actions: [
          IconButton(onPressed: (){MySnackBar('this is shopping cart', context);},
              icon: Icon(Icons.shopping_cart)),

          IconButton(onPressed: (){MySnackBar('how was our product', context);},
              icon: Icon(Icons.comment)),
          
          IconButton(onPressed: (){MySnackBar('here is our product list', context);},
              icon: Icon(Icons.menu)),
        ],
      ),
    );
  }
}
