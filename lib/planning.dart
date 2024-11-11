import 'package:flutter/material.dart';

void main() {
  runApp(PlanningBudgetingApp());
}

class PlanningBudgetingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Planning & Budgeting',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BudgetHomeScreen(),
    );
  }
}
class BudgetHomeScreen extends StatefulWidget {
  @override
  _BudgetHomeScreenState createState() => _BudgetHomeScreenState();
}

class _BudgetHomeScreenState extends State<BudgetHomeScreen> {
  final List<Map<String, dynamic>> budgetItems = [];
  final TextEditingController _itemController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  void _addBudgetItem() {
    final String item = _itemController.text;
    final double? amount = double.tryParse(_amountController.text);

    if (item.isNotEmpty && amount != null) {
      setState(() {
        budgetItems.add({'item': item, 'amount': amount});
        _itemController.clear();
        _amountController.clear();
      });
    }

    Navigator.of(context).pop();
  }

  void _showAddItemDialog() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Add Budget Item'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: _itemController,
                decoration: InputDecoration(labelText: 'Item'),
              ),
              TextField(
                controller: _amountController,
                decoration: InputDecoration(labelText: 'Amount'),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: _addBudgetItem,
              child: Text('Add'),
            ),
          ],
        );
      },
    );
  }
  void _deleteBudgetItem(int index) {
    setState(() {
      budgetItems.removeAt(index);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Budget Management'),
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: _showAddItemDialog,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: budgetItems.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(budgetItems[index]['item']),
            subtitle: Text('\$${budgetItems[index]['amount'].toStringAsFixed(2)}'),
            trailing: IconButton(
              icon: Icon(Icons.delete),
              onPressed: () => _deleteBudgetItem(index),
            ),
          );
        },
      ),
    );
  }
}