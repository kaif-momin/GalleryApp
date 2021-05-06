import 'package:flutter/material.dart';
import 'package:galleryapp/utils/colors.dart';

class DrawerItem extends StatelessWidget {
  DrawerItem({
    @required this.icon,
    @required this.labelText,
    @required this.fontSize,
    @required this.onPressed,
  });
  final IconData icon;
  final String labelText;
  final double fontSize;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(
        icon,
        color: ConstColors.blackColor,
      ),
      title: Text(
        labelText,
        style: TextStyle(
          fontSize: fontSize,
          color: ConstColors.blackColor,
        ),
      ),
      onTap: onPressed,
    );
  }
}
