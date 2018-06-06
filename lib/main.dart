import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
 @override
   Widget build(BuildContext context) {
     // TODO: implement build
     return MaterialApp(
       title:'Children Dose',
       theme: ThemeData(
         primarySwatch: Colors.indigo,
       ),
       home: CalculateDoseForm(),
     );
   }
}

class CalculateDoseForm extends StatefulWidget {
  @override
  CalculateDoseFormState createState() => CalculateDoseFormState();
}

class CalculateDoseFormState extends State<CalculateDoseForm> {
  var 
  _a = 0.0, 
  _b = 0.0, 
  _c = 0.0, 
  _d = 0.0, 
  _e = 0.0,
  score = 0.0,
  _f = 0.0;

  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  final TextEditingController t3 = new TextEditingController(text: "0");
  final TextEditingController t4 = new TextEditingController(text: "0");
  final TextEditingController t5 = new TextEditingController(text: "0");

  void onPressed(){
      setState(() {
        _a = double.parse(t1.text);
        _b = double.parse(t2.text);
        _c = double.parse(t3.text);
        _d = double.parse(t4.text);
        _e = double.parse(t5.text);
        _f = (_c * _d)/_e;   
        score = (_f * _b) / _a;       
      }); 
    }

  final formKey = GlobalKey<FormState>();
  final mainKey = GlobalKey<ScaffoldState>();

  @override
    Widget build(BuildContext context) {
      return Scaffold(
        key: mainKey,
        appBar: AppBar(title: Text("Calculate Form")),
        body: Padding(
          padding: EdgeInsets.all(10.0),
          child: Form(
            key: formKey,
            child: Column(
              children: <Widget>[
                new Text(
                  "Zawartosc substancji czynnej w ml leku",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Custom 1",
                    hintText: "Enter Number in mg",
                  ),
                  controller: t1,
                  keyboardType: TextInputType.number,
                  
                  ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Custom 2",
                    hintText: "Enter Number",
              
                  ),
                  controller: t2,
                  keyboardType: TextInputType.number,
                
                  ),
                  new Text(
                  "Docelowa Dawka",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Custom 3",
                    hintText: "Enter Number",
                  ),
                  controller: t3,
                  keyboardType: TextInputType.number,
               
                  ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Custom 4",
                    hintText: "Enter Number",
                  ),
                  controller: t4,
                  keyboardType: TextInputType.number,
              
                  ),
                  new Text(
                  "Ilosc Dawek",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Custom 5",
                    hintText: "Enter Number",
                  ),
                  controller: t5,
                  keyboardType: TextInputType.number,
                  ),
                RaisedButton(
                  child: Text("Calculate"),
                  onPressed: onPressed,
                ),
                new Text(
                  "Dose: $score",
                  style: new TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.purple,
                  ),
                ),
              ],
              ),
            ),
        ),
      );
    }

}

