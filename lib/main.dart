import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Universe"),
          backgroundColor: Colors.blueGrey[700],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/cocktail.jpg'),
          ),
        ),
        backgroundColor: Colors.grey[400],
      ),
    ),
  );
}

// 'https://img.freepik.com/premium-photo/astronaut-outer-open-space-planet-earth-stars-provide-background-erforming-space-planet-earth-sunrise-sunset-our-home-iss-elements-this-image-furnished-by-nasa_150455-16829.jpg?w=2000')),
