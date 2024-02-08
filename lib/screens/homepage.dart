import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:oblivion/screens/about.dart';
import 'package:oblivion/screens/logs.dart';
import 'package:oblivion/screens/settings.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  ConsumerState<HomePage> createState() {
    return _HomePage();
  }
}

class _HomePage extends ConsumerState<HomePage> {
  bool switchValue = false;
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: IconButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const AboutScreen(),
                    ));
              },
              icon: const Icon(Icons.info)),
          backgroundColor: Colors.orangeAccent,
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LogsScreen(),
                      ));
                },
                icon: const Icon(Icons.bug_report)),
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SettingsScreen(),
                      ));
                },
                icon: const Icon(Icons.settings))
          ],
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Oblivion',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 80,
                    color: Colors.orange),
              ),
              const SizedBox(height: 50),
              Transform.scale(
                scale: 2.0,
                child: Switch(
                  value: switchValue,
                  onChanged: (value) {
                    setState(() {
                      switchValue = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 50),
              Text(
                'Connected: $switchValue',
                style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Colors.orange),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
