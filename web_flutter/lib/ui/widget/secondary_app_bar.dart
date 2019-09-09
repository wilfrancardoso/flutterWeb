import 'package:flutter_web/material.dart';
import 'package:web_flutter/ui/values/values.dart';

class SecondaryAppBar extends StatelessWidget {
  const SecondaryAppBar({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: DEFAULT_SECONDARY_APP_BAR_HEIGHT,
      child: Row(
        children: <Widget>[
          InkWell(
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(PADDING_4)),
              child: Row(
                children: <Widget>[
                  Checkbox(
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    onChanged: (value) {},
                    value: false,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: DEFAULT_PADDING,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: PADDING_8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: PADDING_8,
              ),
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(PADDING_4)),
              child: Icon(
                Icons.refresh,
                color: Colors.black54,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: DEFAULT_PADDING,
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: PADDING_8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: PADDING_8,
              ),
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(PADDING_4)),
              child: Icon(
                Icons.more_vert,
                color: Colors.black54,
              ),
            ),
            onTap: () {},
          ),
          Expanded(
            child: Container(),
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: PADDING_8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: PADDING_8,
              ),
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(PADDING_4)),
              child: Icon(
                Icons.keyboard_arrow_left,
                color: Colors.black54,
              ),
            ),
            onTap: () {},
          ),
          InkWell(
            child: Container(
              margin: EdgeInsets.symmetric(
                vertical: PADDING_8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: PADDING_8,
              ),
              height: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(PADDING_4)),
              child: Icon(
                Icons.keyboard_arrow_right,
                color: Colors.black54,
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: DEFAULT_PADDING,
          ),
          InkWell(
            child: Container(
              height: double.infinity,
              margin: EdgeInsets.symmetric(
                vertical: PADDING_8,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: PADDING_8,
              ),
              decoration: BoxDecoration(
                  color: Colors.black12,
                  borderRadius: BorderRadius.circular(PADDING_4)),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.settings,
                    color: Colors.black54,
                  ),
                  Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black54,
                  )
                ],
              ),
            ),
            onTap: () {},
          ),
          SizedBox(
            width: DEFAULT_PADDING,
          ),
        ],
      ),
    );
  }
}
