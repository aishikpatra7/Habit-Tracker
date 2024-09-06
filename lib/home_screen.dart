import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
        actions: [
          IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => Navigator.pushNamed(context, '/settings'))
        ],
      ),
      body: Column(
        children: [
          Text('Welcome, User!'),
          // Add more widgets for habit summary, add habit button, etc.
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => Navigator.pushNamed(context, '/manage'),
        child: Icon(Icons.add),
      ),
    );
  }
}
