import 'package:flutter/material.dart';
import 'package:navigation_bar_example1/main.dart';

import 'color_filters.dart';

class FirstTabPage extends StatefulWidget {
  const FirstTabPage({Key? key}) : super(key: key);

  @override
  _FirstTabPageState createState() => _FirstTabPageState();
}

class _FirstTabPageState extends State<FirstTabPage> with SingleTickerProviderStateMixin {
  late TabController _controller;
  @override
  Widget build(BuildContext context) => Scaffold(
    body: ListView(
      padding: EdgeInsets.all(16),
      children: [
        buildQuoteCard(),
        buildRoundedCard(),
        buildColoredCard(),
        buildImageCard(),
        buildImageInteractionCard(),
      ],
    ),
  );

  Widget buildQuoteCard() => Card(
    child: Padding(
      padding: EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hey Guys, I am learning Software Development For Android and IOS User',
            style: TextStyle(fontSize: 24),
          ),
          const SizedBox(height: 12),
          Text(
            'Binit Shrestha',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    ),
  );

  Widget buildRoundedCard() => Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(12),
    ),
    child: Container(
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Hello World!!',
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'From Binit Shrestha',
            style: TextStyle(fontSize: 20),
          ),
        ],
      ),
    ),
  );

  Widget buildColoredCard() => Card(
    shadowColor: Colors.red,
    elevation: 8,
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.red,Colors.orange],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Shadows & Gradient',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            'I am practising Shadow and Gradient',
            style: TextStyle(
              fontSize: 20,
              color: Colors.white,
            ),
          ),
        ],
      ),
    ),
  );

  Widget buildImageCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Stack(
      alignment: Alignment.center,
      children: [
        Ink.image(
          // image: NetworkImage(
          //   'https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1327&q=80',
          // ),
          image: NetworkImage('https://images.unsplash.com/flagged/photo-1570612861542-284f4c12e75f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=1050&q=80'),
          colorFilter: ColorFilters.greyscale,
          child: InkWell(
            onTap: () {},
          ),
          height: 240,
          fit: BoxFit.cover,
        ),
        Text(
          'Card With Waves',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.deepOrangeAccent,
            fontSize: 24,
          ),
        ),
      ],
    ),
  );

  Widget buildImageInteractionCard() => Card(
    clipBehavior: Clip.antiAlias,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(24),
    ),
    child: Column(
      children: [
        Stack(
          children: [
            Ink.image(
              image: NetworkImage(
                'https://images.unsplash.com/photo-1586991359975-54500b7d8a86?ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8cGljdHVyZSUyMGZyb20lMjB1bnNwbGFzaHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60',
              ),
              height: 240,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 16,
              right: 16,
              left: 16,
              child: Text(
                'E-commerce By Binit Shrest',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.all(16).copyWith(bottom: 0),
          child: Text(
            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, ',
            style: TextStyle(fontSize: 16),
          ),
        ),
        ButtonBar(
          alignment: MainAxisAlignment.start,
          children: [
            FlatButton(
              child: Text('Add Items',
              style: TextStyle(
                color: Colors.deepOrangeAccent,
              ),),
              onPressed: () {},
            ),
            FlatButton(
              child: Text('Buy Product',
                style: TextStyle(
                    color: Colors.deepOrangeAccent
                ),),
              onPressed: () {},
            )
          ],
        )
      ],
    ),
  );
}

