import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/product_screen.dart';
import 'screens/order_screen.dart';
import 'screens/cart_screen.dart';
import 'screens/payment_screen.dart';
import 'screens/register_screen.dart';
import 'screens/login_screen.dart';
import 'screens/about_us_screen.dart';
import 'screens/contact_us_screen.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'E-Commerce App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/product': (context) => ProductScreen(),
        '/order': (context) => OrderScreen(),
        '/cart': (context) => CartScreen(),
        '/payment': (context) => PaymentScreen(),
        '/register': (context) => RegisterScreen(),
        '/login': (context) => LoginScreen(),
        '/about': (context) => AboutUsScreen(),
        '/contact': (context) => ContactUsScreen(),
      },
    );
  }
}








