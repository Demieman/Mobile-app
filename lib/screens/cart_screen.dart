import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Shopping Cart")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Your Cart"),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment');
              },
              child: Text("Proceed to Payment"),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order');
              },
              child: Text("View Orders"),
            ),
          ],
        ),
      ),
    );
  }
}