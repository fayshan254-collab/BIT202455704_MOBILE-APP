import 'package:flutter/material.dart';

class FarmerHome extends StatelessWidget {
  final List<Map<String, String>> myProducts = [
    {"name": "Tomatoes", "price": "KES 100/kg"},
    {"name": "Goats", "price": "KES 8,000 each"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Farmer Dashboard")),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(10),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {},
                child: Text("+ Add Product"),
              ),
            ),
          ),

          Expanded(
            child: ListView.builder(
              itemCount: myProducts.length,
              itemBuilder: (context, index) {
                final p = myProducts[index];

                return Card(
                  margin: EdgeInsets.all(10),
                  child: ListTile(
                    leading: Icon(Icons.agriculture),
                    title: Text(p["name"]!),
                    subtitle: Text(p["price"]!),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}