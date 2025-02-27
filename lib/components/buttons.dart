import 'package:flutter/material.dart';

Widget commonbutton(BuildContext context, String text, VoidCallback onPressed) {
  return ElevatedButton(
    onPressed: onPressed,
    style: ElevatedButton.styleFrom(
      padding: const EdgeInsets.only(left: 50, right: 50),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      backgroundColor: Theme.of(context).primaryColor,
      side: const BorderSide(
        width: 2,
      ),
      elevation: 4,
    ),
    child: Text(
      text,
      style: Theme.of(context).textTheme.bodyMedium,
      
    ),
  );
}