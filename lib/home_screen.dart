
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.teal,
            title: Text('TabBar'),
            bottom: TabBar(
              isScrollable: true,
                tabs: [
                  Tab(icon: Icon(Icons.home), text: 'Home',),
                  Tab(icon: Icon(Icons.no_accounts), text: 'Accounts'),
                  Tab(icon: Icon(Icons.add_business), text: 'Business',),
                  Tab(icon: Icon(Icons.bubble_chart), text: 'Bubble',),
                  Tab(icon: Icon(Icons.shopping_cart), text: 'Shopping chart',),
                  Tab(icon: Icon(Icons.shopping_basket), text: 'Shoppin busket',),
                  Tab(icon: Icon(Icons.notifications), text: 'Notification',),
                  Tab(icon: Icon(Icons.menu), text: 'Menu'),

                ]
            ),
          ),
        ),
    );
  }
}
