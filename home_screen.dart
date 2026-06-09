import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Farm Marketplace")),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              "Welcome to Farm Marketplace",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 30),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/products');
              },
              child: Text("Browse Products"),
            ),

            SizedBox(height: 10),

            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/farmer');
              },
              child: Text("Farmer Dashboard"),
            ),
          ],
        ),
      ),
    );
  }
}