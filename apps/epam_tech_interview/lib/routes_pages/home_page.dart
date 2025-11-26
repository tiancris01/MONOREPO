import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final void Function(String)? onNavigate;

  const HomePage({super.key, this.onNavigate});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Center(child: Text('Welcome to the Home Page!')),
          const SizedBox(height: 10),
          ElevatedButton(
            onPressed: () {
              // Navigation 2.0 way - update app state
              onNavigate?.call('/secondPage');
            },
            child: const Text('Go to Second Page'),
          ),
        ],
      ),
    );
  }
}
