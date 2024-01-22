import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
         appBar: AppBar(
           title:const Text("Hello world"),
           backgroundColor: Colors.grey,

      ),
        body: Container(
        color: Colors.cyanAccent,
          child: const Center(
            heightFactor:5,
            widthFactor: 100,
            child: Text("First flutter application",
              textAlign:   TextAlign.center,
              style:TextStyle(fontSize: 20,color: Colors.redAccent,
                  decoration: TextDecoration.underline ),
              maxLines:1,
            ),



          ),


    ),
          floatingActionButton: FloatingActionButton(
           onPressed: () {
             print("First flutter application");
           },
            backgroundColor: Colors.yellow,
           child:  const Text("Click"),
            shape:,

          ),
          bottomNavigationBar:BottomNavigationBar(

          items:const [
            BottomNavigationBarItem(
            label:"Home" ,icon:Icon(Icons.home) ),
            BottomNavigationBarItem(
                label: "Time", backgroundColor:Colors.green ,icon:Icon(Icons.access_time_rounded) ),
            BottomNavigationBarItem(
                label: "Phone", backgroundColor:Colors.amberAccent ,icon:Icon(Icons.add_call) ),
        ],
      ),
    )
    );
  }
}
