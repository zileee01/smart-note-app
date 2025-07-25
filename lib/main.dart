import 'package:flutter/material.dart';
import 'screens/splash_screen.dart'; 

void main() {
  runApp(const NoteWiseApp()); 
}

class NoteWiseApp extends StatelessWidget {
  const NoteWiseApp({super.key}); 

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Note Wise',
      theme: ThemeData(
        useMaterial3: true,
        fontFamily: 'Montserrat'
      ), 
      home: const SplashScreen(), 
      debugShowCheckedModeBanner: false,
    ); 
  }
}