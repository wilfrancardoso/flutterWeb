import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/view_model/navigation_view_model.dart';
import 'package:web_flutter/ui/values/values.dart';

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationViewModel = Provider.of<NavigationViewModel>(context);
    return Container(
      width: double.infinity,
      height: DEFAULT_APP_BAR_HEIGHT,
      color: Color(0xFFECEFF1),
      child: Row(
        children: <Widget>[
          Container(
            width: 300,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.menu),
                  onPressed: () => navigationViewModel.isMenuOpen
                      ? navigationViewModel.closeMenu()
                      : navigationViewModel.openMenu(),
                ),
                SizedBox(
                  width: 32.0,
                ),
                Text(
                  "PAE 4.0",
                  style: TextStyle(
                    fontFamily: "Roboto",
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(
                vertical: DEFAULT_PADDING,
              ),
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(PADDING_4),
                  color: Colors.white,
                ),
                margin: EdgeInsets.only(right: 400),
                padding: EdgeInsets.all(PADDING_4),
                child: Row(
                  children: <Widget>[
                    SizedBox(
                      width: 16.0,
                    ),
                    Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                    Text("Pesquisar"),
                    SizedBox(
                      width: 16.0,
                    ),
                    Expanded(
                      child: Container(),
                    ),
                    Icon(
                      Icons.arrow_drop_down,
                      color: Colors.grey,
                    ),
                    SizedBox(
                      width: 16.0,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 12.0),
            margin: EdgeInsets.only(
              right: DEFAULT_PADDING,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(100),
              child: Image.network(
                "https://avatars0.githubusercontent.com/u/12293696?s=400&v=4",
                fit: BoxFit.contain,
              ),
            ),
          ),
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
