import 'package:flutter/material.dart';

class MyApptest extends StatefulWidget {
  @override
  _MyApptestState createState() => _MyApptestState();
}

enum ProductMode { Product1, Product2, Product3 }

class _MyApptestState extends State<MyApptest> {
  ProductMode selectedProduct = ProductMode.Product2; // Holds the selected product mode
  bool showAllItems = false; // Flag to track if "View All" button is clicked

  List<String> itemsProduct1 = ['Item A1', 'Item B1', 'Item C1']; // Items for Product 1
  List<String> itemsProduct2 = ['Item A2', 'Item B2', 'Item C2']; // Items for Product 2
  List<String> itemsProduct3 = ['Item A3', 'Item B3', 'Item C3']; // Items for Product 3

  List<String> getSelectedItems() {
    // Return the items based on the selected product mode
    switch (selectedProduct) {
      case ProductMode.Product1:
        return itemsProduct1;
      case ProductMode.Product2:
        return itemsProduct2;
      case ProductMode.Product3:
        return itemsProduct3;
      default:
        return [];
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product Modes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    showAllItems = true;
                  });
                },
                child: Text('View All'),
              ),
              SizedBox(height: 20),
              if (showAllItems) ...[
                Text(
                  'Items for ${selectedProduct.toString().split('.').last}:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: getSelectedItems().length,
                  itemBuilder: (BuildContext context, int index) {
                    return ListTile(
                      title: Text(getSelectedItems()[index]),
                    );
                  },
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

