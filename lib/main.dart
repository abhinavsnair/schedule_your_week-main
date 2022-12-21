import 'package:flutter/material.dart';
import 'package:scheduler/screens/home_screen.dart';
import 'package:scheduler/screens/scheduler.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        //useMaterial3: true
      ),
      initialRoute: 'landing',
      routes: {
        'landing':(context) => const LandingPage(),
        'scheduler':(context) => const Scheduler()
      },
    );
  }
}

