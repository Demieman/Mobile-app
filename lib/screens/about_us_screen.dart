import 'package:flutter/material.dart';

class AboutUsScreen extends StatelessWidget {
  const AboutUsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("About Us"),
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
              "Our Mission",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800], // Header text color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "At E-Shop, our mission is to provide the best online shopping experience, offering a wide range of products at unbeatable prices.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 20),
            Text(
              "Our Story",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800], // Header text color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Founded in 2024, E-Shop has grown from a small startup to a trusted platform for millions of customers. We value quality, affordability, and customer satisfaction.",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const SizedBox(height: 20),
            Text(
              "Contact Us",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.blueGrey[800], // Header text color
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              "Email: demelashasires4@gmail.com\nPhone: +251 924044671",
              style: TextStyle(fontSize: 16, color: Colors.black87),
            ),
            const Spacer(), // Pushes content to the top
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context); // Navigate back
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white, backgroundColor: Colors.green, // Text color on button
                padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
              child: const Text("Go Back"),
            ),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}