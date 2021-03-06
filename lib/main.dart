import 'package:flutter/material.dart';
import 'package:music_player/music_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music Player',
      theme: ThemeData(
        primarySwatch: Colors.grey,
        fontFamily: 'Ubuntu',
        // brightness: Brightness.dark
      ),
      debugShowCheckedModeBanner: false,
      home: const MusicList(),
    );
  }
}
