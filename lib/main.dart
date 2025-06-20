import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  // Ensure widgets are bound before Firebase is initialized
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize Firebase
  await Firebase.initializeApp();

  // Start the app
  runApp(const MattaHarmoniaApp());
}

class MattaHarmoniaApp extends StatelessWidget {
  const MattaHarmoniaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MattaHarmonia',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('MattaHarmonia'),
      ),
      body: const Center(
        child: Text(
          '🎉 Firebase is connected!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
