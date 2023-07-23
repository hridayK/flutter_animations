import 'package:animations/animations/implicit_animations.dart';
import 'package:animations/animations/tween_build_animations.dart';
import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blueAccent,
            ),
            child: Center(
              child: Text(
                'Animations Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.five_mp_outlined,
              color: Colors.amber.shade900,
            ),
            title: const Text('Implicit Animations'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ImplicitAnimationsDemo(),
                ),
              );
            },
          ),
          ListTile(
            leading: Icon(
              Icons.five_mp_outlined,
              color: Colors.blue.shade800,
            ),
            title: const Text('Tween Builder Animations'),
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const TweenAnimation(),
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
