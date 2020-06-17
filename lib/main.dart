import 'package:employee/theoretical.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

/// This is a reimplementation of the default Flutter application using provider + [ChangeNotifier].

void main() {
  runApp(
    /// Providers are above [MyApp] instead of inside it, so that tests
    /// can use [MyApp] while mocking the providers
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => Counter()),
         ChangeNotifierProvider(create: (_) => Counter1()),
          ChangeNotifierProvider(create: (_) => Counter2()),
           ChangeNotifierProvider(create: (_) => Counter3()),
            ChangeNotifierProvider(create: (_) => Counter4()),
      ],
      child:  MyApp(),
    )
   
  );
}

/// Mix-in [DiagnosticableTreeMixin] to have access to [debugFillProperties] for the devtool
class Counter with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 20000;
  int get count => _count;

  void increment( ) {
   
    _count = (_count+0.2*_count).round();
    notifyListeners();
  }
 void decrement(){
     _count = (_count-0.1*_count).round();
    notifyListeners();
 }
  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
class Counter1 with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 20000;
  int get count => _count;

  void increment( ) {
    
    _count = (_count+0.2*_count).round();
    notifyListeners();
  }
 void decrement(){
     _count = (_count-0.1*_count).round();
    notifyListeners();
 }
  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
class Counter2 with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 50000;
  int get count => _count;

  void increment( ) {
     
    _count = (_count+0.2*_count).round();
    notifyListeners();
  }
 void decrement(){
     _count = (_count-0.1*_count).round();
    notifyListeners();
 }
  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
class Counter3 with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 23000;
  int get count => _count;

  void increment( ) {
   
    _count = (_count+0.2*_count).round();
    notifyListeners();
  }
 void decrement(){
     _count = (_count-0.1*_count).round();
    notifyListeners();
 }
  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
class Counter4 with ChangeNotifier, DiagnosticableTreeMixin {
  int _count = 20000;
  int get count => _count;

  void increment( ) {
   
    _count = (_count+0.2*_count).round();
    notifyListeners();
  }
 void decrement(){
     _count = (_count-0.1*_count).round();
    notifyListeners();
 }
  /// Makes `Counter` readable inside the devtools by listing all of its properties
  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(IntProperty('count', count));
  }
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Employee App'),
        backgroundColor: Colors.orangeAccent,
      ),
      body: SingleChildScrollView(
        child: Column(
       // itemBuilder: (context,index)
        children: <Widget>[
        Container(
        
                          child: Card(
                            elevation: 4.0,
                            child:  ListTile(
                          
                            contentPadding: EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                            leading: Text("1.", style : TextStyle(color: Colors.black87,
                            fontSize: 20.0,
                                fontWeight: FontWeight.bold),),
                            title: Text("Employee One", style : TextStyle(color: Colors.black87,
                                fontWeight: FontWeight.bold),),
                            subtitle: Row(children: <Widget>[
                            Text("\u20B9", style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),),
                                SizedBox(width: 2.0,),

                            const Count()]),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               SizedBox(width : 10.0),
                           IconButton(icon : Icon (Icons.thumb_up), color: Colors.green[600],
                            onPressed: () =>context.read<Counter>().increment() ,
                          ),
                         SizedBox(width :15.0),
                         IconButton(icon : Icon (Icons.thumb_down, color: Colors.red[600],
                            
                            ),
                            onPressed: (){
                                        context.read<Counter>().decrement();
                            },
                            )  ],),),

                          margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        ),),
                           Container(
        
                          child: Card(
                            elevation: 4.0,
                            child:  ListTile(
                          
                            contentPadding: EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                            leading: Text("2.", style : TextStyle(color: Colors.black87,
                            fontSize: 20.0,
                                fontWeight: FontWeight.bold),),
                            title: Text("Employee Two", style : TextStyle(color: Colors.black87,
                                fontWeight: FontWeight.bold),),
                            subtitle: Row(children: <Widget>[
                            Text("\u20B9", style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),),
                                SizedBox(width: 2.0,),

                            const Count1()]),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               SizedBox(width : 10.0),
                           IconButton(icon : Icon (Icons.thumb_up), color: Colors.green[600],
                            onPressed: () =>context.read<Counter1>().increment() ,
                          ),
                         SizedBox(width :15.0),
                         IconButton(icon : Icon (Icons.thumb_down, color: Colors.red[600],
                            
                            ),
                            onPressed: (){
                                        context.read<Counter1>().decrement();
                            },
                            )  ],),),

                          margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        ),),
                            Container(
        
                          child: Card(
                            elevation: 4.0,
                            child:  ListTile(
                          
                            contentPadding: EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                            leading: Text("3.", style : TextStyle(color: Colors.black87,
                            fontSize: 20.0,
                                fontWeight: FontWeight.bold),),
                            title: Text("Employee Three", style : TextStyle(color: Colors.black87,
                                fontWeight: FontWeight.bold),),
                            subtitle: Row(children: <Widget>[
                            Text("\u20B9", style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),),
                                SizedBox(width: 2.0,),

                            const Count2()]),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               SizedBox(width : 10.0),
                           IconButton(icon : Icon (Icons.thumb_up), color: Colors.green[600],
                            onPressed: () =>context.read<Counter2>().increment() ,
                          ),
                         SizedBox(width :15.0),
                         IconButton(icon : Icon (Icons.thumb_down, color: Colors.red[600],
                            
                            ),
                            onPressed: (){
                                        context.read<Counter2>().decrement();
                            },
                            )  ],),),

                          margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        ),), Container(
        
                          child: Card(
                            elevation: 4.0,
                            child:  ListTile(
                          
                            contentPadding: EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                            leading: Text("4.", style : TextStyle(color: Colors.black87,
                            fontSize: 20.0,
                                fontWeight: FontWeight.bold),),
                            title: Text("Employee Four", style : TextStyle(color: Colors.black87,
                                fontWeight: FontWeight.bold),),
                            subtitle: Row(children: <Widget>[
                            Text("\u20B9", style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),),
                                SizedBox(width: 2.0,),

                            const Count3()]),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               SizedBox(width : 10.0),
                           IconButton(icon : Icon (Icons.thumb_up), color: Colors.green[600],
                            onPressed: () =>context.read<Counter3>().increment() ,
                          ),
                         SizedBox(width :15.0),
                         IconButton(icon : Icon (Icons.thumb_down, color: Colors.red[600],
                            
                            ),
                            onPressed: (){
                                        context.read<Counter3>().decrement();
                            },
                            )  ],),),

                          margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        ),),   Container(
        
                          child: Card(
                            elevation: 4.0,
                            child:  ListTile(
                          
                            contentPadding: EdgeInsets.only(left: 5, right: 5, top: 8, bottom: 8),
                            leading: Text("5.", style : TextStyle(color: Colors.black87,
                            fontSize: 20.0,
                                fontWeight: FontWeight.bold),),
                            title: Text("Employee Five", style : TextStyle(color: Colors.black87,
                                fontWeight: FontWeight.bold),),
                            subtitle: Row(children: <Widget>[
                            Text("\u20B9", style: TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),),
                                SizedBox(width: 2.0,),

                            const Count4()]),
                           trailing: Row(
                             mainAxisSize: MainAxisSize.min,
                             children: <Widget>[
                               SizedBox(width : 10.0),
                           IconButton(icon : Icon (Icons.thumb_up), color: Colors.green[600],
                            onPressed: () =>context.read<Counter4>().increment() ,
                          ),
                         SizedBox(width :15.0),
                         IconButton(icon : Icon (Icons.thumb_down, color: Colors.red[600],
                            
                            ),
                            onPressed: (){
                                        context.read<Counter4>().decrement();
                            },
                            )  ],),),

                          margin: EdgeInsets.only(bottom: 8, left: 16, right: 16),
                        ),),
                        
                     
        ]),

 
     ) );
  }
}

class Count extends StatelessWidget {
  const Count({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

        /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
        '${context.watch<Counter>().count}.0',
        style:  TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),);
  }
}
class Count1 extends StatelessWidget {
  const Count1({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

        /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
        '${context.watch<Counter1>().count}.0',
        style:  TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),);
  }
}
class Count2 extends StatelessWidget {
  const Count2({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

        /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
        '${context.watch<Counter2>().count}.0',
        style:  TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),);
  }
}
class Count3 extends StatelessWidget {
  const Count3({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

        /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
        '${context.watch<Counter3>().count}.0',
        style:  TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),);
  }
}
class Count4 extends StatelessWidget {
  const Count4({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(

        /// Calls `context.watch` to make [MyHomePage] rebuild when [Counter] changes.
        '${context.watch<Counter4>().count}.0',
        style:  TextStyle(color: Colors.black45,
                                fontWeight: FontWeight.bold),);
  }
}
