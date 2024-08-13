import 'dart:math';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final List<String> countries = [
    'Pakistan',
    'Canada',
    'Germany',
    'France',
    'Japan',
    'India',
    'Australia',
    'Brazil',
    'China',
    'USA'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent.shade100,
        title: Text('List of Countries'),
      ),
      body: ListView.builder(
        itemCount: countries.length,
        itemBuilder: (context, index) {
          return Card(
            color: getRandomColor(),
            margin: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
            child: ListTile(
              contentPadding: EdgeInsets.all(16),
              title: Text(
                countries[index],
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500,color: Colors.white),
              ),
              onTap: () {
                Navigator.pushNamed(
                  context,
                  '/details',
                  arguments: countries[index],
                );
              },
            ),
          );
        },
      ),
    );
  }

  Color getRandomColor() {
    Random random = Random();
    return Color.fromARGB(
      255,
      random.nextInt(256),
      random.nextInt(256),
      random.nextInt(256),
    );
  }
}
