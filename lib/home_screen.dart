
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProductList extends StatefulWidget {
  @override
  _ProductListState createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  List<Product> products = [
    Product(name: 'Product 1', price: 100),
    Product(name: 'Product 2', price: 150),
    Product(name: 'Product 3', price: 200),
    Product(name: 'Product 4', price: 100),
    Product(name: 'Product 5', price: 250),
    Product(name: 'Product 6', price: 150),
    Product(name: 'Product 7', price: 300),
    Product(name: 'Product 8', price: 320),
    Product(name: 'Product 9', price: 50),
    Product(name: 'Product 10', price: 500),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product List'),
      ),


      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ProductItem(
            product: products[index],
            onBuyPressed: () {
              setState(() {
                products[index].buy();
                if (products[index].count == 5) {
                  _showCongratulationsDialog(products[index].name);
                }
              });
            },
          );
        },

      ),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.teal,
          child: Icon(Icons.shopping_cart),
          onPressed: (){
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => CartPage(products: products),
              ),
            );

          }),
    );
  }

  Future<void> _showCongratulationsDialog(String productName) async {
    return showDialog<void>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Congratulations!'),
          content: Text('You\'ve bought 5 $productName!'),
          actions: <Widget>[
            TextButton(
              child: Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}

class Product {
  final String name;
  final double price;
  int count = 0;

  Product({required this.name, required this.price});

  void buy() {
    count++;
  }
}

class ProductItem extends StatelessWidget {
  final Product product;
  final VoidCallback onBuyPressed;

  ProductItem({required this.product, required this.onBuyPressed});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(product.name),
      subtitle: Text('Price: \$${product.price.toStringAsFixed(2)}'),
      trailing: SingleChildScrollView(
        child: Column(
          children: [
            Text('Count: ${product.count}'),
            ElevatedButton(
              onPressed: onBuyPressed,
              child: Text('Buy Now'),
            ),
          ],
        ),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  final List<Product> products;

  CartPage({required this.products});

  int getTotalCount() {
    int totalCount = 0;
    for (var product in products) {
      totalCount += product.count;
    }
    return totalCount;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart'),
      ),
      body: Center(
        child: Text('Total Products ${getTotalCount()}'),
      ),
    );
  }
}
