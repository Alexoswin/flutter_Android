import 'package:flutter/material.dart';
int i = 0;
void main() => runApp(MaterialApp(
  home:Scaffold(
    appBar: AppBar(
      title: Text("hello world Oswin"),
      backgroundColor: Colors.yellow,
      centerTitle: true,

    ),
      body: Center(
        child: Text("hello world"),

      ),

      floatingActionButton: FloatingActionButton(

       onPressed: (){
         i= i+1;
         print(i);
       },
        child: Text("Click"),
        backgroundColor: Colors.blue,
  ) ,


  ),
));