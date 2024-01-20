import 'package:flutter/material.dart';
int i = 0;
void main() => runApp(MaterialApp(
  home: Home(),
));


//state less widget
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("hello world Oswin"),
        backgroundColor: Colors.yellow,
        centerTitle: true,


      ),
      body: Center(
        child: Text("hello world  ${i}"  ),

      ),

      floatingActionButton: FloatingActionButton(

        onPressed: (){
          i= i+1;
          print(i);

        },
        child: Text("Click ${i}"),
        backgroundColor: Colors.blue,
      ) ,


    );
  }
}

