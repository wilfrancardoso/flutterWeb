import 'package:flutter_web/material.dart';
import 'package:web_flutter/ui/values/values.dart';

class TabItem extends StatelessWidget {
  TabItem(
      {this.title = "", this.iconData = Icons.add, this.isSelected = false});

  final String title;
  final IconData iconData;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      customBorder: Border.all(width: 1),
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(width: 1.0, color: Colors.black26),
        ),
        padding: EdgeInsets.all(DEFAULT_PADDING),
        child: Row(
          children: <Widget>[
            Icon(
              iconData,
              color: Colors.black45,
            ),
            SizedBox(width: DEFAULT_PADDING),
            Text(
              title,
              style: TextStyle(
                color: Colors.black45,
              ),
            ),
            SizedBox(width: DEFAULT_PADDING),
          ],
        ),
      ),
    );
  }
}
