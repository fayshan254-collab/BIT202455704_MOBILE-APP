import 'package:flutter/material.dart';

class ProductDetailsScreen extends StatelessWidget {
  ProductDetailsScreen({super.key});
  @override
  Widget build(BuildContext context) {
    final Map<String, String> product =
        ModalRoute.of(context)!.settings.arguments as Map<String, String>;

    return Scaffold(
      appBar: AppBar(title: Text(product["name"]!)),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(product["name"]!,
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text("Price: ${product["price"]}"),
            Text("Category: ${product["category"]}"),
            SizedBox(height: 20),

            ElevatedButton(
              onPressed: () {},
              child: Text("Contact Farmer"),
            ),
          ],
        ),
      ),
    );
  }
}