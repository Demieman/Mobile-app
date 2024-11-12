import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Shopping Cart"),
        backgroundColor: Colors.blueAccent, // AppBar color
      ),
      body: Container(
        color: Colors.lightBlue[50], // Background color of the body
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(height: 20),
            Text(
              "Your Cart Items",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800], // Header text color
              ),
            ),
            const SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: 5, // Example item count
                itemBuilder: (context, index) {
                  return Card(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    elevation: 3,
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Product Name $index", style: const TextStyle(fontSize: 18)),
                              const SizedBox(height: 5),
                              const Text("Quantity: 1", style: TextStyle(color: Colors.grey)),
                            ],
                          ),
                          Text("\$${(index + 1) * 20}", style: const TextStyle(fontSize: 18)),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const Divider(height: 40, thickness: 2),
            const Text(
              "Total: \$${(5 * 20)}", // Total amount calculation
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/payment'); // Navigate to payment page
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green, // Text color on button
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text("Proceed to Payment"),
            ),
            const SizedBox(height: 10),
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/order'); // Navigate to orders page
              },
              child: const Text(
                "View Orders",
                style: TextStyle(color: Colors.blueAccent), // Text color for link
              ),
            ),
          ],
        ),
      ),
    );
  }
}