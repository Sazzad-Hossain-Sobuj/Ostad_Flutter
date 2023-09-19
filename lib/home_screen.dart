
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        backgroundColor: Colors.teal,
        toolbarHeight: 60,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page1('Hey! I am From HomePage to Page1')));
            },
                child: Text('Go Page1')),

            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2('Hey! I am From HomePage to Page2')));
            },
                child: Text('Go Page2')),
          ],
        ),
      ),
    );
  }
}


class Page1 extends StatelessWidget {
  String msg1;
  Page1(this.msg1, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page1'),
        backgroundColor: Colors.teal,
        toolbarHeight: 60,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page2('Hey! I am From Page1 to Page2')));
            },
                child: Text('Go Page2')),
          ),
          SizedBox(height: 20),
          Text(msg1),
        ],
      ),
    );
  }
}


class Page2 extends StatelessWidget {
  String msg2;
  Page2(this.msg2, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Page2'),
        backgroundColor: Colors.teal,
        toolbarHeight: 60,
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context) => Page1('Hey! I am From Page2 to Page1')));
            },
                child: Text('Go Page1')),
          ),
          SizedBox(height: 20),
          Text(msg2),
        ],
      ),
    );
  }
}
