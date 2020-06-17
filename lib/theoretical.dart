import 'package:flutter/material.dart';
class ParentClass extends StatefulWidget {
  @override
  _ParentClassState createState() => _ParentClassState();
}

class _ParentClassState extends State<ParentClass> {
 
    int  c =0;
     void question(){}//function should be defined outside builder to be called
  @override
  Widget build(BuildContext context) {
   
    return Column(
      children: <Widget>[
     Container(
      child: ChildClass().build(context),
    ),
  
    ]);

  }
}
class ChildClass extends StatelessWidget{
  _ParentClassState pc;

  ChildClass({this.pc});
  Widget build(BuildContext context) {
  return MaterialApp(
      home: Container(
        color: Colors.red,
        child: Center(
          child: RaisedButton(
            child: Text("click me", textDirection: TextDirection.ltr),
            onPressed: () {
               this.pc.question();
               
      
    }
            
          ),
        ),
      ),
    );
}}