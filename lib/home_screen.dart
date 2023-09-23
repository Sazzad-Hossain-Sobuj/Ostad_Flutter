import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme and ThemeData'),
        titleSpacing: 50,
        toolbarHeight: 60,
        elevation: 40,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello! Sazzad'),
            Text('Hello! Sazzad',style: Theme.of(context).textTheme.bodySmall,),
            Text('Hello! Sazzad'),
            SizedBox(height: 10),
            TextButton(onPressed: (){},
                child: Text('TextButton')),
            SizedBox(height: 10),
            ElevatedButton(onPressed: (){},
                child: Text('ElevatedButton1')),
            SizedBox(height: 5),
            ElevatedButton(onPressed: (){},
                child: Text('ElevatedButton2'),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.pink,
              ),
            ),
          ],

        ),
      ),

    );
  }
}

