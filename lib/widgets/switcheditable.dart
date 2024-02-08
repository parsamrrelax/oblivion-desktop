import 'package:flutter/material.dart';

class SwitchEditable extends StatelessWidget {
  const SwitchEditable(
      {super.key,
      required this.icon,
      required this.title,
      required this.value,
      required this.onChanged,
      required this.description});

  final IconData icon;
  final String title;
  final bool value;
  final String description;
  final Function(bool) onChanged;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon),
      title: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title),
          Text(description,
              style: const TextStyle(fontWeight: FontWeight.w200, fontSize: 12))
        ],
      ),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
