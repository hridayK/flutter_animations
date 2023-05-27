import 'package:flutter/material.dart';

class ImplicitAnimationsDemo extends StatefulWidget {
  const ImplicitAnimationsDemo({super.key});

  @override
  State<ImplicitAnimationsDemo> createState() => _ImplicitAnimationsDemoState();
}

class _ImplicitAnimationsDemoState extends State<ImplicitAnimationsDemo> {
  bool bigger = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Implicit Animations'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AnimatedContainer(
                width: bigger ? 200 : 100,
                height: bigger ? 200 : 100,
                color: bigger ? Colors.orange : Colors.red.shade700,
                duration: const Duration(seconds: 1),
                curve: Curves.easeInOut,
                child: Center(
                  child: Text(
                    'Bigger = $bigger',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontSize: bigger ? 24 : 12,
                    ),
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    bigger = !bigger;
                  });
                },
                child: const Text('Change Size'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
