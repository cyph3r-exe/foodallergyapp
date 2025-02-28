import 'package:flutter/material.dart';

class SelectAllergy extends StatefulWidget {
  const SelectAllergy({super.key});

  @override
  State<SelectAllergy> createState() => _SelectAllergyState();
}

class _SelectAllergyState extends State<SelectAllergy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text(
              'Welcome to the Select Allergy Page',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ),
    );
  }
}