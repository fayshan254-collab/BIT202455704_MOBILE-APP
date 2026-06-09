import 'package:flutter/material.dart';

class ProductsScreen extends StatelessWidget {
   ProductsScreen({super.key});
  final List<Map<String, String>> products = [
    {"name": "Pishori Rice", "price": "KES 50/bag", "category": "Crops"},
    {"name": "Tomatoes", "price": "KES 100/kg", "category": "Crops"},
    {"name": "Butter", "price": "KES 200/kg", "category": "Dairy"},
    {"name": "Ghee", "price": "KES 300/kg", "category": "Dairy"},
    {"name": "Goats", "price": "KES 8,000 each", "category": "Livestock"},
    {"name": "Cows", "price": "KES 60,000 each", "category": "Livestock"},
    {"name": "Chicken", "price": "KES 500 each", "category": "Livestock"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Products")),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];

          return Card(
            margin: EdgeInsets.all(10),
            child: ListTile(
              leading: Icon(Icons.eco),
              title: Text(p["name"]!),
              subtitle: Text("${p["price"]}\n${p["category"]}"),
              isThreeLine: true,
              onTap: () {
                Navigator.pushNamed(context, '/details', arguments: p);
              },
            ),
          );
        },
      ),
    );
  }
}
