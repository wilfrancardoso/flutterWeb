import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/model/tag.dart';

class CustomTag extends StatelessWidget {
  const CustomTag({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tag = Provider.of<Tag>(context);
    return Container(
      padding: EdgeInsets.all(4.0),
      decoration: BoxDecoration(
          color: tag.color, borderRadius: BorderRadius.circular(4.0)),
      child: Text(
        tag.name,
        style: TextStyle(
          color: Colors.white,
        ),
      ),
    );
  }
}
