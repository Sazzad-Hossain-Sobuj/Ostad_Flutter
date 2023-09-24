import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ostad_project_all/style.dart';

class SumApp extends StatefulWidget {
  const SumApp({Key? key}) : super(key: key);

  @override
  State<SumApp> createState() => _SumAppState();
}

class _SumAppState extends State<SumApp> {

  Map<String, double> FormValues = {
    'num1': 0,
    'num2': 0,
};

  
  MyInputOnChange(InputKey, InputValue){
    FormValues.update(InputKey, (value) => double.parse(InputValue));
    setState(() {

    });
  }

  double SUM = 0;
  AddAllNumber(){
    setState(() {

    });
    SUM = FormValues['num1']!+FormValues['num2']!;
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('SumApp'),
        centerTitle: true,
      ),

      body: Padding(
          padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text(SUM.toString(),style: HeadStyle(),),
            SizedBox(height: 10),
            TextFormField(onChanged: (value){
              MyInputOnChange('num1', value);
            }, decoration: AppStyle('First Number')),
            SizedBox(height: 10),
            TextFormField(onChanged: (value){MyInputOnChange('num2', value);},decoration: AppStyle('Second Number'),),
            SizedBox(height: 10),
            Container(
              child: ElevatedButton(
                style: AddButton(),
                  onPressed: (){
                  AddAllNumber();
                  },
                  child: Text('Add')),
            )

          ],
        ),
      ),


    );
  }
}
