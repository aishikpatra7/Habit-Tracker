import 'package:flutter/material.dart';

class HabitManagementScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Manage Habits')),
      body: ListView(
        children: [
          ListTile(title: Text('Habit 1')),
          ListTile(title: Text('Habit 2')),
          // Add form to add/edit habits
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to add/edit habit form
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
