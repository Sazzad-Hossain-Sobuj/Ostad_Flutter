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
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.teal,
        elevation: 20,
        child: Icon(Icons.add),
        onPressed: (){MySnackBar('hey! your shopping list is added', context);},
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
            BottomNavigationBarItem(icon: Icon(Icons.message),label: 'contact'),
            BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),
          ],
        onTap: (int index){
            if(index == 0){
              MySnackBar('this is home page', context);

            }
            if(index == 1){
              MySnackBar('hey! here your contact', context);

            }
            if(index == 2){
              MySnackBar('here is your profile', context);

            }
        }


      ),
    );
  }
}
