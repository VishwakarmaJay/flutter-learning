import 'package:flutter/material.dart'; // it import the flutter package

final name = "Jay";

void main() {
  // main function
  runApp(const MainApp()); //runApp is a built-in function in Flutter.
}

class MainApp extends StatelessWidget {
  // MainApp is a stateless widget that represents the main application.
  const MainApp({super.key}); // MainApp constructor.

  @override
  Widget build(BuildContext context) {
    // build method is called when the widget is built.
    return const MaterialApp(
      // MaterialApp is a built-in widget that represents the application.
      home: Scaffold(
        body: Center(child: Text('Hello $name!')),
      ), // Scafflod is a built-in widget that provides basic layout. Also Text Widget is a built-in widget that displays text on the screen.
    );
  }
}
