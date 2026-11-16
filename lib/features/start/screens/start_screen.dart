import 'package:material_ui/material_ui.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Start Workout')),
      body: const Center(child: Text('Coming soon')),
    );
  }
}