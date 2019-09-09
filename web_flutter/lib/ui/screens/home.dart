import 'package:flutter_web/material.dart';
import 'package:web_flutter/ui/widget/content.dart';
import 'package:web_flutter/ui/widget/custom_app_bar.dart';
import 'package:web_flutter/ui/widget/side_menu.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          CustomAppBar(),
          _buildBodyRow(context),
        ],
      ),
    );
  }

  Row _buildBodyRow(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.max,
      children: <Widget>[
        SideMenu(),
        Expanded(child: ContentWidget()),
      ],
    );
  }
}
