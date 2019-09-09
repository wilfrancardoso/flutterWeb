import 'package:flutter_web/material.dart';
import 'package:provider/provider.dart';
import 'package:web_flutter/core/view_model/navigation_view_model.dart';

class SideMenuItem extends StatefulWidget {
  const SideMenuItem({
    Key key,
    this.title = "",
    this.isSelected = false,
    this.index = 0,
  }) : super(key: key);

  final bool isSelected;
  final String title;
  final int index;

  @override
  _SideMenuItemState createState() => _SideMenuItemState();
}

class _SideMenuItemState extends State<SideMenuItem>
    with SingleTickerProviderStateMixin {
  double height = 0;

  AnimationController _animationController;
  Animation<double> _heightAnimation;

  @override
  void initState() {
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 100));
    _heightAnimation =
        Tween<double>(begin: 0, end: 54).animate(_animationController);
    super.initState();
  }

  @override
  void didChangeDependencies() {
    final navigationViewModel = Provider.of<NavigationViewModel>(context);
    if (navigationViewModel.selectedMenuIndex == widget.index) {
      _animationController.forward();
    } else {
      _animationController.reverse();
    }
    super.didChangeDependencies();
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final navigationViewModel = Provider.of<NavigationViewModel>(context);
    return InkWell(
      onTap: () => navigationViewModel.setSelectedMenuIndex(widget.index),
      child: Container(
        height: 54,
        width: double.infinity,
        child: Row(
          children: <Widget>[
            AnimatedBuilder(
              animation: _heightAnimation,
              builder: (context, child) {
                return Container(
                  height: _heightAnimation.value,
                  width: 3,
                  color: widget.isSelected ? Colors.red : Colors.transparent,
                );
              },
            ),
            Expanded(
              child: navigationViewModel.isMenuOpen
                  ? Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Text(
                        widget.title,
                        textAlign: TextAlign.start,
                        style: TextStyle(
                          fontSize: 28.0,
                          fontWeight: FontWeight.w500,
                          color: widget.isSelected ? Colors.black : Colors.grey,
                        ),
                      ),
                    )
                  : Icon(Icons.add),
            )
          ],
        ),
      ),
    );
  }
}
