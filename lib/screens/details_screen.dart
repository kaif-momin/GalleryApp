import 'package:flutter/material.dart';
import 'package:vector_math/vector_math_64.dart' show Vector3;

class DetailsScreen extends StatefulWidget {
  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  double _scale = 1.0;
  double _previousScale = 1.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: GestureDetector(
        onScaleStart: (ScaleStartDetails details) {
          _scale = _previousScale;
          setState(() {});
        },
        onScaleUpdate: (ScaleUpdateDetails details) {
          _scale = _previousScale * details.scale;
          setState(() {});
        },
        onScaleEnd: (ScaleEndDetails details) {
          _previousScale = _scale;
          setState(() {});
        },
        child: Transform(
          alignment: FractionalOffset.center,
          transform: Matrix4.diagonal3(Vector3(_scale, _scale, _scale)),
          child: Image(
            image: AssetImage("assets/images/image1.jpg"),
          ),
        ),
      ),
    );
  }
}
