import 'package:flutter/material.dart';
import 'package:ui_design/Playlist.dart';



void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
         debugShowCheckedModeBanner: false,
      theme: ThemeData(
       scaffoldBackgroundColor: const Color(0xff091227)
      ),
   home: const PlaylistScreen(),
    );
  }
}


