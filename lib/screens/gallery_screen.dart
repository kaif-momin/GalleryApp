import 'package:flutter/material.dart';
import 'package:galleryapp/screens/app_drawer.dart';
import 'package:galleryapp/screens/details_screen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({Key key}) : super(key: key);

  @override
  _GalleryScreenState createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  int _crossAxisCount = 5;
  List<String> _imageList =
      List.generate(20, (index) => "assets/images/image1.jpg");

  int count = 0;

  void _decrease() {
    if (_crossAxisCount == 5) {
      setState(() {
        _crossAxisCount = 3;
      });
    } else if (_crossAxisCount == 3) {
      setState(() {
        _crossAxisCount = 1;
      });
    }
  }

  void _increase() {
    if (_crossAxisCount == 1) {
      setState(() {
        _crossAxisCount = 3;
      });
    } else if (_crossAxisCount == 3) {
      setState(() {
        _crossAxisCount = 5;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Gallery App"),
      ),
      drawer: AppDrawer(),
      body: GestureDetector(
        onScaleUpdate: (details) {
          count++;
          print('--\n$count\n--');
          print(details.scale);
          if (details.scale == 1.0) {
          } else if (details.scale < 1.5) {
            _increase();
          } else {
            _decrease();
          }
        },
        child: GridView.count(
          crossAxisCount: _crossAxisCount,
          children: _imageList
              .map((e) => Container(
                    height: 100,
                    width: 50,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (ctx) => DetailsScreen(),
                          ),
                        );
                      },
                      child: Image(
                        image: AssetImage(e),
                        fit: BoxFit.fill,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
