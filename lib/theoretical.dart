import 'package:flutter/material.dart';
class ParentClass extends StatefulWidget {
  @override
  _ParentClassState createState() => _ParentClassState();
}

class _ParentClassState extends State<ParentClass> {
 
    int  c =0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
     Container(
      child: ChildClass().build(context),
    ),
    ChildClass(
      question :{
      setState(() {
             c=c+1;
            }),
      }),
    ]);

  }
}
class ChildClass extends StatelessWidget{
  var question;

  ChildClass({this.question});
  Widget build(BuildContext context) {
  return MaterialApp(
      home: Container(
        color: Colors.red,
        child: Center(
          child: RaisedButton(
            child: Text("click me", textDirection: TextDirection.ltr),
            onPressed: () {
               
      
    }
            
          ),
        ),
      ),
    );
}}