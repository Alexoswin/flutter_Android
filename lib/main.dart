import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final List<CardItem> cardItems = [
    CardItem(
      title: 'car1',
      subtitle: '4 wheels red colour  suv ',
      color: Colors.blueGrey,
      icon: Icons.account_balance
    ),
    CardItem(
      title: 'car2',
      subtitle: '4 wheels sedan all wheel drive',
      color: Colors.yellow,
      icon: Icons.account_balance_rounded
    ),
    CardItem(
      title: 'bus',
      subtitle: '60 seats ',
      color: Colors.green,
      icon: Icons.favorite_border,
    ),


  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.lightBlueAccent,
          title: Text('Experiment 4'),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: cardItems.length,
            itemBuilder: (context, index) {
              return CustomCard(cardItem: cardItems[index]);
            },
          ),
        ),
      ),
    );
  }
}

class CardItem {
  final String title;
  final String subtitle;
  final Color color;
  final IconData icon;

  CardItem({
    required this.title,
    required this.subtitle,
    required this.color,
    required this.icon,
  });
}

class CustomCard extends StatelessWidget {
  final CardItem cardItem;

  CustomCard({required this.cardItem});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(16.0),
        title: Text(
          cardItem.title,
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
            fontSize: 18.0,
          ),
        ),
        subtitle: Text(
          cardItem.subtitle,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 16.0,
          ),
        ),
        leading: CircleAvatar(
          backgroundColor: cardItem.color,
          child: Icon(
            cardItem.icon,
            color: Colors.white,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward,
          color: Colors.grey,
        ),
        onTap: () {
          // Handle onTap event
          print('Tapped on ${cardItem.title}');
        },
      ),
    );
  }
}