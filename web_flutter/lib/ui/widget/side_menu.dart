import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/view_model/navigation_view_model.dart';
import 'package:web_flutter/ui/values/values.dart';
import 'package:web_flutter/ui/widget/custom_divider.dart';
import 'package:web_flutter/ui/widget/side_menu_item.dart';

class SideMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final navigationViewModel = Provider.of<NavigationViewModel>(context);
    return AnimatedContainer(
      duration: Duration(milliseconds: 100),
      width: navigationViewModel.isMenuOpen ? 300 : 70,
      child: Column(
        children: <Widget>[
          Container(
            height: 54,
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "PAE",
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  width: 32.0,
                ),
                Icon(
                  Icons.arrow_drop_down,
                  color: Colors.red,
                ),
              ],
            ),
          ),
          CustomDivider(),
          SizedBox(
            height: DEFAULT_PADDING,
          ),
          Container(
            child: Card(
              margin: EdgeInsets.symmetric(
                horizontal: PADDING_32,
              ),
              elevation: PADDING_4,
              color: Colors.deepOrange,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  InkWell(
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: PADDING_8,
                        vertical: DEFAULT_PADDING,
                      ),
                      child: Row(
                        children: <Widget>[
                          Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                          Text(
                            "NOVO DOCUMENTO",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: PADDING_4,
                  ),
                  Container(
                    height: 20,
                    width: 1,
                    color: Colors.white.withAlpha(140),
                  ),
                  SizedBox(
                    width: PADDING_4,
                  ),
                  Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  )
                ],
              ),
            ),
          ),
          SizedBox(
            height: 32.0,
          ),
          for (int i = 0; i < navigationViewModel.menuOptions.length; i++)
            SideMenuItem(
              title: navigationViewModel.menuOptions[i],
              isSelected: navigationViewModel.selectedMenuIndex == i,
              index: i,
            )
        ],
      ),
    );
  }
}
