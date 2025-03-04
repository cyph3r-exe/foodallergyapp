import 'package:flutter/material.dart';
import 'package:foodallergy/components/buttons.dart';
import 'package:foodallergy/components/textentry.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController firstName = TextEditingController();
  final TextEditingController lastName = TextEditingController();
  final TextEditingController email = TextEditingController();
  final TextEditingController phone = TextEditingController();
  final TextEditingController password = TextEditingController();
  final TextEditingController confirmpassword = TextEditingController();

  void onPressed() {
    Navigator.pushNamed(context, '/home');
  }

  List<String> dropdownItems = ["IgE-Mediated Food Allergies", "Non-IgE-Mediated Food Allergies", 
  "Mixed IgE and Non-IgE Food Allergies", "Pollen-Food Allergy Syndrome", "Exercise-Induced Food Allergies",
  "Alpha-Gal Syndrome"];
  String selectedValue = "IgE-Mediated Food Allergies";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Text(
                'Sign Up',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
            ),
            CircleAvatar(
              radius: 50,
              child: Icon(
                Icons.person,
                size: 50,
              ),
            ),
            Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  textentry(
                      context, 'First Name', false, firstName, Icons.person_2),
                  textentry(
                      context, 'Last Name', false, lastName, Icons.person),
                  textentry(context, 'Email', false, email, Icons.email),
                  textentry(context, 'Phone', false, phone, Icons.phone),
                  textentry(context, 'Password', true, password, Icons.lock),
                  textentry(context, 'Confirm Password', true, confirmpassword,
                      Icons.lock),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: Alignment.topLeft,
                child: DropdownButton<String>(
                  value: selectedValue,
                  icon: Icon(Icons.arrow_drop_down), // Dropdown icon
                  iconSize: 24,
                  elevation: 16,
                  style: Theme.of(context).textTheme.bodyMedium,
                  onChanged: (String? newValue) {
                    setState(() {
                      selectedValue = newValue!;
                    });
                  },
                  items:
                      dropdownItems.map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value),
                    );
                  }).toList(),
                ),
              ),
            ),
            commonbutton(context, 'Sign In', onPressed),
          ],
        ),
      ),
    );
  }
}
