import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class LogsScreen extends ConsumerStatefulWidget {
  const LogsScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<LogsScreen> createState() {
    return _HomePage();
  }
}

class _HomePage extends ConsumerState<LogsScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text(
            'Logs',
            style: TextStyle(color: Colors.grey[800]),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
      ),
    );
  }
}
