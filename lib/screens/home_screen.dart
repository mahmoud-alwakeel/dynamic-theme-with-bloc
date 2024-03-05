import 'package:dynamic_theme_bloc/screens/settings_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return const SettingsScreen(); 
              }));
            },
            icon: const Icon(Icons.settings),
          ),
        ],
      ),
      body: Center(
        child: Text('Dynamic Theme', style: TextStyle(fontSize: 30),),
      ),
    );
  }
}
