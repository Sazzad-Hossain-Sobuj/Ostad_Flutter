import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert Msg'),
        backgroundColor: Colors.teal,
        toolbarHeight: 60,
        elevation: 30,
        actions: [
          IconButton(onPressed: (){},
              icon: Icon(Icons.add_business)),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Switch(value: true, onChanged: (bool value) {}),
            ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
                onPressed: () {
                  showDialog(
                      barrierDismissible: false,
                      context: context,
                      builder: (context) => AlertDialog(
                            title: Text('Alert'),
                            content: Text('You are in danger'),
                            actions: [
                              TextButton(
                                  onPressed: () {
                                    Navigator.pop(context);
                                  },
                                  child: Text('canel')),
                              TextButton(onPressed: () {}, child: Text('okay')),
                            ],
                          ));
                },
                child: Text('Show')),
            ElevatedButton(onPressed: (){
              showAboutDialog(
                context: context,
                applicationName: 'App.com',
                applicationVersion: '1.2.3',
                applicationIcon: Icon(Icons.account_balance_wallet_outlined),
              );
            },
                child: Text('show about')),
            ElevatedButton(onPressed: (){
              showModalBottomSheet(context: context, builder: (context) => Column(
                children: [
                  Center(
                    child: Text('bottomsheet'),
                  )
                ],
              ) );
            },
                child: Text('show bottom sheet')),
          ],
        ),
      ),
    );
  }
}
