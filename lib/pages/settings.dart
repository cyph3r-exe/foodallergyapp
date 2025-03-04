import 'package:flutter/material.dart';
import 'package:foodallergy/components/bottomnavbar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: mainbottombar(context, 3),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Will be available soon',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}