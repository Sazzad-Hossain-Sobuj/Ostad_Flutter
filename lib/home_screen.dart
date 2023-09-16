
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Shopping list',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        backgroundColor: Colors.teal,
        
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.shopping_cart),iconSize: 25,)],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Apples',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Banana',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Milk',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Oil',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Rice',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Fish',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Vegetables',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),
            ListTile(
              leading: Icon(Icons.shopping_basket,size: 30,color: Colors.teal,),
              title: Text('Hen',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
            ),

          ],
        ),
      )


    );
  }
}