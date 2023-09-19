
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
        backgroundColor: Colors.teal,
        toolbarHeight: 60,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            Card(
              color: Colors.teal,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 80,
                width: 100,
                child: Center(
                  child: Text('Hey! card1',style: TextStyle(color: Colors.white),),
                ),
            ),
            ),
            Card(
              color: Colors.teal,
              elevation: 20,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              child: SizedBox(
                height: 80,
                width: 100,
                child: Center(
                  child: Text('Hey! card2',style: TextStyle(color: Colors.white),),
                ),
              ),
            ),
            Wrap(
              alignment: WrapAlignment.start,
              spacing: 20,
              runSpacing: 10,

              children: [
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                    height: 80,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.teal,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                    ),

                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
                Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  elevation: 20,
                  child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.teal,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Center(
                        child: Text('Hey! card3',style: TextStyle(color: Colors.white),),
                      )
                  ),
                ),
              ],
            )

          ],
        ),
      ),

    );
  }
}

