import 'package:ds_fake_store_api/design_system.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weather Design System Demo',
      theme: AppTheme.light(),
      darkTheme: AppTheme.dark(),
      themeMode: ThemeMode.system,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weather Design System')),
      body: Padding(
        padding: context.appSpacing.screenPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Display temperature example
            Text('25°', style: context.appTypography.temperature),
            SizedBox(height: context.appSpacing.lg),

            // Headline example
            Text('San Francisco', style: context.appTypography.headlineLarge),
            SizedBox(height: context.appSpacing.sm),

            // Body text example
            Text(
              'Partly cloudy with a chance of rain',
              style: context.appTypography.bodyLarge,
            ),
            SizedBox(height: context.appSpacing.xl),

            // Weather card example
            Card(
              child: Padding(
                padding: context.appSpacing.cardPadding,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Today', style: context.appTypography.titleMedium),
                    SizedBox(height: context.appSpacing.sm),
                    Row(
                      children: [
                        Icon(Icons.wb_sunny, color: context.appColors.sun),
                        SizedBox(width: context.appSpacing.sm),
                        Text('Sunny', style: context.appTypography.bodyMedium),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: context.appSpacing.lg),

            // Button examples
            ElevatedButton(
              onPressed: () {},
              child: const Text('Check Weather'),
            ),
            SizedBox(height: context.appSpacing.sm),
            TextButton(onPressed: () {}, child: const Text('More Details')),
          ],
        ),
      ),
    );
  }
}
