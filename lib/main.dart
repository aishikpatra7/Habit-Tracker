import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'authentication_screen.dart';
import 'habit_management_screen.dart';
import 'habit_tracking_screen.dart';
import 'home_screen.dart';
import 'notifications_screen.dart';
import 'onboarding_screen.dart';
import 'settings_screen.dart';
import 'splash_screen.dart';
import 'statistics_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Habit Tracker App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => SplashScreen(),
        '/onboarding': (context) => OnboardingScreen(),
        '/auth': (context) => AuthenticationScreen(),
        '/home': (context) => HomeScreen(),
        '/manage': (context) => HabitManagementScreen(),
        '/track': (context) => HabitTrackingScreen(),
        '/stats': (context) => StatisticsScreen(),
        '/settings': (context) => SettingsScreen(),
        '/notifications': (context) => NotificationsScreen(),
      },
    );
  }
}
