import 'package:flutter/material.dart';

Widget textentry(BuildContext context, String label, bool obscure,
    TextEditingController controller, IconData? prefixIcon) {
  return TextField(
    obscureText: obscure,
    controller: controller,
    decoration: InputDecoration(
      labelText: label,
      labelStyle: Theme.of(context).textTheme.bodyMedium,
      prefixIcon: Icon(prefixIcon),
    ),
  );
}