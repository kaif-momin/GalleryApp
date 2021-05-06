import 'package:flutter/material.dart';
import 'package:galleryapp/screens/gallery_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0xffE23744),
        accentColor: Colors.black,
      ),
      title: 'Gallery App',
      home: GalleryScreen(),
    );
  }
}
