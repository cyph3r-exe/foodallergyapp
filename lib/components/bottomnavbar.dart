
import 'package:flutter/material.dart';

Widget mainbottombar(BuildContext context, int selectedIndex) {
  return BottomAppBar(
      elevation: 20,
      color: Colors.transparent,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(15),
          topRight: Radius.circular(15),
        ),
        child: Container(
          decoration: const BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Colors.black,
                width: 2,
              ),
            ),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: const Icon(Icons.person_2_outlined),
                onPressed: () {
                  Navigator.pushNamed(context, '/profile');
                },
                color:
                    selectedIndex == 0 ? Theme.of(context).primaryColor : Colors.black,
              ),
              
              IconButton(
                icon: const Icon(Icons.home),
                onPressed: () {
                  Navigator.pushNamed(context, '/home');
                },
                color:
                    selectedIndex == 2 ? Theme.of(context).primaryColor : Colors.black,
              ),
              IconButton(
                icon: const Icon(Icons.settings),
                onPressed: () {
                  Navigator.pushNamed(context, '/settings');
                },
                color:
                    selectedIndex == 3 ? Theme.of(context).primaryColor : Colors.black,
              ),
            ],
          ),
        ),
      ));
}