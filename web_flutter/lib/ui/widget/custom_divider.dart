import 'package:flutter_web/material.dart';

class CustomDivider extends StatelessWidget {
  CustomDivider({this.height = 1.0});
  final double height;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      color: Colors.black12,
    );
  }
}
