import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({Key? key}) : super(key: key);

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {

  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter App'),
        backgroundColor: Colors.lightBlue,
      ),
      
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Count:',style: TextStyle(fontSize: 20),),
            SizedBox(height: 5,),
            Text(count.toString(),style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  child: ElevatedButton(

                      onPressed: (){
                        count+=1;
                        setState(() {

                        });
                        if (count>=5){
                          showDialog(
                              context: context,
                              builder: (BuildContext context){
                                return AlertDialog(
                                  title: Text('Button pressed $count times'),
                                  actions: [
                                    TextButton(
                                        onPressed: (){
                                          Navigator.of(context).pop();
                                        },
                                        child: Text('close'))
                                  ],
                                );
                              });
                        }
                      },
                      child: Text('+',style: TextStyle(fontSize: 30),)),
                ),
                SizedBox(width: 10,),
                Container(
                  child: ElevatedButton(
                      onPressed: (){
                        if(count>0){
                          count-=1;
                        }
                        setState(() {
                          
                        });
                      },
                      child: Text('-',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
