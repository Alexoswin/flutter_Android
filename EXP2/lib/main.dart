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
            child: Center(
              heightFactor: 5, // Adjust the height factor as needed
              widthFactor: 100, // Adjust the width factor as needed
              child: Image.network(
                'https://files.porsche.com/filestore/image/multimedia/none/992-gt3-model-series-page-tp-model-announcement/preview/3861d55f-9ec8-11eb-80d4-005056bbdc38;sP;twebp/porsche-preview.webp',
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),

          ),

          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("First flutter application");
            },
            backgroundColor: Colors.yellow,
            child:  const Text("Click"),


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