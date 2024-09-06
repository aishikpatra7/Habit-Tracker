import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        children: [
          OnboardingPage(
              title: 'Welcome', description: 'Track your habits easily.'),
          OnboardingPage(
              title: 'Track', description: 'See your progress over time.'),
          OnboardingPage(
              title: 'Achieve',
              description: 'Stay motivated and achieve your goals.'),
        ],
      ),
    );
  }
}

class OnboardingPage extends StatelessWidget {
  final String title;
  final String description;

  OnboardingPage({required this.title, required this.description});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(title,
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
          SizedBox(height: 16),
          Text(description, style: TextStyle(fontSize: 16)),
          Spacer(),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/auth');
            },
            child: Text('Get Started'),
          ),
        ],
      ),
    );
  }
}
