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
            child: const Text("First flutter application",
              textAlign: TextAlign.center,
              style:TextStyle(fontSize: 20,color: Colors.redAccent,
                  decoration: TextDecoration.underline ),
              maxLines:1,
            ),
            heightFactor:5,
            widthFactor: 100,


          ),



    ),
          floatingActionButton: FloatingActionButton(
           onPressed: () {
             print("First flutter application");
           },
           child: const Text("Click"),
            backgroundColor: Colors.yellow,

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
