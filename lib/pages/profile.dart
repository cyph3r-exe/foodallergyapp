import 'package:flutter/material.dart';
import 'package:foodallergy/components/bottomnavbar.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: mainbottombar(context, 1),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              child: Icon(Icons.person, size: 50),
            ),
            const SizedBox(height: 10),
            Text(
              'John Doe',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(height: 10),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text('Email: '),
                      Text('example@srmist.edu.in'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Phone: '),
                      Text('9876543210'),
                    ],
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text('Allergies: '),
                      Text('Peanuts, Dairy, Gluten'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Text('Favourite Recipes',
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.left,),
          ],
        ),
      ),
    );
  }
}
