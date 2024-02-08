import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AboutScreen extends ConsumerStatefulWidget {
  const AboutScreen({Key? key}) : super(key: key);

  @override
  ConsumerState<AboutScreen> createState() {
    return _HomePage();
  }
}

class _HomePage extends ConsumerState<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      child: Scaffold(
        backgroundColor: Colors.orange[100],
        appBar: AppBar(
          title: Text(
            'About',
            style: TextStyle(color: Colors.grey[800]),
          ),
          backgroundColor: Colors.orangeAccent,
        ),
      ),
    );
  }
}
