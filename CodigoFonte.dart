import 'package:flutter/material.dart';

void main() => runApp (MaterialApp(
home: Scaffold(
 body: Card(
         child: Column(
       children: <Widget>[
               Text("teste") 
   ],
         ),
 ),
    appBar: AppBar(title: Text("Transferências")),
floatingActionButton: FloatingActionButton(
        onPressed: () { },
        child: Icon(Icons.add),
)
),
));
