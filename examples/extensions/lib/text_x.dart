import 'package:flutter/material.dart';
import 'package:fl_utils/fl_utils.dart';

void main() => runApp(const TextXApp());

class TextXApp extends StatelessWidget {
  const TextXApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.from(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.lightGreen,
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(title: const Text('TextX Example')),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Text('opacity: 1.0'),
              const Text('opacity: 0.8').applyOpacity(opacity: 0.8),
              const Text('opacity: 0.6').applyOpacity(opacity: 0.6),
              const Text('opacity: 0.4').applyOpacity(opacity: 0.4),
              const Text('opacity: 0.2').applyOpacity(opacity: 0.2),
              const Text('opacity: 0.4').applyOpacity(opacity: 0.4),
              const Text('opacity: 0.6').applyOpacity(opacity: 0.6),
              const Text('opacity: 0.8').applyOpacity(opacity: 0.8),
              const Text('opacity: 1.0'),
            ],
          ),
        ),
      ),
    );
  }
}
