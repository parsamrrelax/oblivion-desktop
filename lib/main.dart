import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oblivion/screens/about.dart';
import 'package:oblivion/screens/homepage.dart';
import 'package:oblivion/screens/logs.dart';
import 'package:oblivion/screens/settings.dart';
import 'package:window_manager/window_manager.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (Platform.isWindows || Platform.isLinux) {
    await windowManager.ensureInitialized();
    WindowManager.instance.setMinimumSize(const Size(800, 600));
  }
  runApp(
    const ProviderScope(child: MyApp()),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Oblivion',
      initialRoute: '/',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      routes: {
        '/': (context) => const HomePage(),
        '/settings': (context) => const SettingsScreen(),
        '/logs': (context) => const LogsScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}
