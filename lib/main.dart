import 'package:flutter/cupertino.dart';
import 'package:ostad_project_all/home_screen.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        backgroundColor: Color.fromARGB(200,88, 254, 199),
        middle: Text('Home'),
        leading: Icon(CupertinoIcons.camera_rotate),
        trailing: CupertinoSwitch(value: true,
            onChanged: (bool onchange){}),
      ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('CupertionApp'),
              Text('CupertionApp'),
              Text('CupertionApp'),
              Text('CupertionApp'),
              CupertinoButton(
                  child: Text('button'),
                  onPressed: (){}),
              CupertinoButton.filled(
                  child: Text('button'),
                  onPressed: (){}),
              SizedBox(height: 5,),
              CupertinoTextField(),
              CupertinoTabBar(
                  items: [
                    BottomNavigationBarItem( label: 'headphone', icon: Icon(CupertinoIcons.headphones)),
                    BottomNavigationBarItem( label: 'headphone', icon: Icon(CupertinoIcons.square_favorites_alt_fill)),
                    BottomNavigationBarItem( label: 'headphone', icon: Icon(CupertinoIcons.location)),
                  ]),
            ],
          ),
        ));
  }
}

